#!/usr/bin/python3

import argparse
from collections import Counter, OrderedDict
from datetime import datetime

from Levenshtein import ratio
import os
import re
import sys

query_game = "marioparty3"
search_game = "mp1"

script_dir = os.path.dirname(os.path.realpath(__file__))
query_root_dir = script_dir + "/../../" + query_game
query_asm_dir = query_root_dir + "/asm/nonmatchings/simanASM/"
query_build_dir = query_root_dir + "build/"

search_root_dir = script_dir + "/../../" + search_game
search_asm_dir = search_root_dir + "/asm/nonmatchings/"
search_build_dir = search_root_dir + "build/"

def read_rom(root_dir):
    with open(root_dir + "/baserom.us.z64", "rb") as f:
        return f.read()


def get_all_s_files(asm_dir):
    ret = set()
    for root, dirs, files in os.walk(asm_dir):
        for f in files:
            if f.endswith(".s"):
                ret.add(f[:-2])
    return ret


def get_query_symbol_length(sym_name):
    if sym_name not in query_map_offsets:
        return 0

    if "end" in query_map_offsets[sym_name] and "start" in query_map_offsets[sym_name]:
        return query_map_offsets[sym_name]["end"] - query_map_offsets[sym_name]["start"]
    return 0

# def get_search_symbol_length(sym_name):
#     if "end" in search_map_offsets[sym_name] and "start" in search_map_offsets[sym_name]:
#         return search_map_offsets[sym_name]["end"] - search_map_offsets[sym_name]["start"]
#     return 0

def get_query_symbol_bytes(offsets, func):
    if func not in offsets or "start" not in offsets[func] or "end" not in offsets[func]:
        return None
    start = offsets[func]["start"]
    end = offsets[func]["end"]
    bs = list(query_rom_bytes[start:end])

    while len(bs) > 0 and bs[-1] == 0:
        bs.pop()

    insns = bs[0::4]

    ret = []
    for ins in insns:
        ret.append(ins >> 2)

    return bytes(ret).decode('utf-8'), bs

def get_search_symbol_bytes(offsets, func):
    if func not in offsets or "start" not in offsets[func] or "end" not in offsets[func]:
        return None
    start = offsets[func]["start"]
    end = offsets[func]["end"]
    bs = list(search_rom_bytes[start:end])

    while len(bs) > 0 and bs[-1] == 0:
        bs.pop()

    insns = bs[0::4]

    ret = []
    for ins in insns:
        ret.append(ins >> 2)

    return bytes(ret).decode('utf-8'), bs


def parse_map(fname):
    ram_offset = None
    cur_file = "<no file>"
    syms = {}
    prev_sym = None
    prev_line = ""
    with open(fname) as f:
        for line in f:
            if "load address" in line:
                if "noload" in line or "noload" in prev_line:
                    ram_offset = None
                    continue
                ram = int(line[16 : 16 + 18], 0)
                rom = int(line[59 : 59 + 18], 0)
                ram_offset = ram - rom
                continue
            prev_line = line

            if (
                ram_offset is None
                or "=" in line
                or "*fill*" in line
                or " 0x" not in line
            ):
                continue
            ram = int(line[16 : 16 + 18], 0)
            rom = ram - ram_offset
            fn = line.split()[-1]
            if "0x" in fn:
                ram_offset = None
            elif "/" in fn:
                cur_file = fn
            else:
                syms[fn] = (rom, cur_file, prev_sym, ram)
                prev_sym = fn
    return syms


def get_map_offsets(syms):
    offsets = {}
    for sym in syms:
        prev_sym = syms[sym][2]
        if sym not in offsets:
            offsets[sym] = {}
        if prev_sym not in offsets:
            offsets[prev_sym] = {}
        offsets[sym]["start"] = syms[sym][0]
        offsets[prev_sym]["end"] = syms[sym][0]
    return offsets


# def is_zeros(vals):
#     for val in vals:
#         if val != 0:
#             return False
#     return True


def diff_syms(qb, tb):
    if len(tb[1]) < 8:
        return 0

    # The minimum edit distance for two strings of different lengths is `abs(l1 - l2)`
    # Quickly check if it's impossible to beat the threshold. If it is, then return 0
    l1, l2 = len(qb[0]), len(tb[0])
    if abs(l1 - l2) / (l1 + l2) > 0.015: # 1.0 - 0.985
        return 0
    r = ratio(qb[0], tb[0])

    if r == 1.0 and qb[1] != tb[1]:
        r = 0.99
    return r


def get_pair_score(query_bytes, s):
    s_bytes = get_search_symbol_bytes(search_map_offsets, s)

    if query_bytes and s_bytes:
        return diff_syms(query_bytes, s_bytes)
    return 0


def get_matches(query_symbol):
    query_bytes = get_query_symbol_bytes(query_map_offsets, query_symbol)
    if query_bytes is None:
        sys.exit("Symbol '" + query_symbol + "' not found")

    ret = {}
    for search_symbol in search_map_offsets:
        if search_symbol is not None:
            score = get_pair_score(query_bytes, search_symbol)
            if score >= 0.985: # short threshold
                ret[search_symbol] = score
    return OrderedDict(sorted(ret.items(), key=lambda kv: kv[1], reverse=True))


# def do_query(query):
#     matches = get_matches(query)
#     num_matches = len(matches)

#     if num_matches == 0:
#         print(query + " - found no matches")
#         return

#     i = 0
#     more_str = ":"
#     if args.num_out < num_matches:
#         more_str = " (showing only " + str(args.num_out) + "):"

#     print(query + " - found " + str(num_matches) + " matches total" + more_str)
#     for match in matches:
#         if i == args.num_out:
#             break
#         match_str = "{:.3f} - {}".format(matches[match], match)
#         if match not in s_files:
#            match_str += " (decompiled)"
#         print(match_str)
#         i += 1
#     print()


def all_matches(all_funcs_flag):
    match_dict = dict()
    to_find_files = list(query_files.copy())
    to_search_files = list(search_files.copy())
    
    # assumption that after half the functions have been matched, nothing of significance is left
    # since duplicates that already have been discovered are removed from tp_match_files
    # if all_funcs_flag:
    iter_limit = 0
    # else:
    #     iter_limit = len(s_files) / 2

    num_decomped_dupes = 0
    num_undecomped_dupes = 0
    num_perfect_dupes = 0

    i = 0
    while len(to_find_files) > iter_limit:
        file = to_find_files[0]

        i += 1
        print("File matching progress: {:%}".format(i / (len(query_files) - iter_limit)), end='\r')

        # symbol doesn't exists? 
        if file not in query_map_offsets:
            to_find_files.remove(file)
            continue

        if get_query_symbol_length(file) < 16:
            to_find_files.remove(file)
            continue

        matches = get_matches(file)
        num_matches = len(matches)
        if num_matches == 0:
            to_find_files.remove(file)
            continue

        num_undecomped_dupes += 1

        match_list = []
        for match in matches:
            if match in to_search_files:
                to_search_files.remove(match)

            match_str = "{:.2f} - {}".format(matches[match], match)
            if matches[match] >= 0.995:
                num_perfect_dupes += 1

            if match not in search_files:
                num_decomped_dupes += 1
                match_str += " (decompiled)"
            else:
                num_undecomped_dupes += 1

            match_list.append(match_str)

        match_dict.update({file: (num_matches, match_list)})
        to_find_files.remove(file)

    output_match_dict(match_dict, num_decomped_dupes, num_undecomped_dupes, num_perfect_dupes, i)


def output_match_dict(match_dict, num_decomped_dupes, num_undecomped_dupes, num_perfect_dupes, num_checked_files):
    out_file = open(datetime.today().strftime('%Y-%m-%d-%H-%M-%S') + "_all_matches.txt", "w+")

    out_file.write("Number of s-to-find-files: " + str(len(query_files)) + "\n"
                   "Number of checked s-to-find-files: " + str(round(num_checked_files)) + "\n"
                   "Number of decompiled duplicates found: " + str(num_decomped_dupes) + "\n"
                   "Number of undecompiled duplicates found: " + str(num_undecomped_dupes) + "\n"
                   "Number of overall exact duplicates found: " + str(num_perfect_dupes) + "\n\n")

    sorted_dict = OrderedDict(sorted(match_dict.items(), key=lambda item: item[1][0], reverse=True))

    print("Creating output file: " + out_file.name, end='\n')
    for file_name, matches in sorted_dict.items():
        out_file.write(file_name + " - found " + str(matches[0]) + " matches total:\n")
        for match in matches[1]:
            out_file.write(match + "\n")
        out_file.write("\n")

    out_file.close()

# def is_decompiled(sym):
#     return sym not in s_files

# def do_cross_query():
#     ccount = Counter()
#     clusters = []

#     sym_bytes = {}
#     for sym_name in map_syms:
#         if not sym_name.startswith("D_") and \
#            not sym_name.startswith("_binary") and \
#            not sym_name.startswith("jtbl_") and \
#            not re.match(r"L[0-9A-F]{8}_[0-9A-F]{5,6}", sym_name):
#             if get_symbol_length(sym_name) > 16:
#                 sym_bytes[sym_name] = get_symbol_bytes(map_offsets, sym_name)

#     for sym_name, query_bytes in sym_bytes.items():
#         cluster_match = False
#         for cluster in clusters:
#             cluster_first = cluster[0]
#             cluster_score = diff_syms(query_bytes, sym_bytes[cluster_first])
#             if cluster_score >= args.threshold:
#                 cluster_match = True
#                 if is_decompiled(sym_name) and not is_decompiled(cluster_first):
#                     ccount[sym_name] = ccount[cluster_first]
#                     del ccount[cluster_first]
#                     cluster_first = sym_name
#                     cluster.insert(0, cluster_first)
#                 else:
#                     cluster.append(sym_name)

#                 if not is_decompiled(cluster_first):
#                     ccount[cluster_first] += len(sym_bytes[cluster_first][0])

#                 if len(cluster) % 10 == 0 and len(cluster) >= 10:
#                     print(f"Cluster {cluster_first} grew to size {len(cluster)} - {sym_name}: {str(cluster_score)}")
#                 break
#         if not cluster_match:
#             clusters.append([sym_name])
#     print(ccount.most_common(100))


# parser = argparse.ArgumentParser(description="Tool to find duplicates for a specific function or to find all duplicates across the codebase.")
# group = parser.add_mutually_exclusive_group()
# group.add_argument("-a", "--all", help="find ALL duplicates and output them into a file", action='store_true', required=False)
# group.add_argument("-c", "--cross", help="do a cross query over the codebase", action='store_true', required=False)
# group.add_argument("-s", "--short", help="find MOST duplicates besides some very small duplicates. Cuts the runtime in half with minimal loss", action='store_true', required=False)
# parser.add_argument("query", help="function or file", nargs='?', default=None)
# parser.add_argument("-t", "--threshold", help="score threshold between 0 and 1 (higher is more restrictive)", type=float, default=0.9, required=False)
# parser.add_argument("-n", "--num-out", help="number of functions to display", type=int, default=100, required=False)

# args = parser.parse_args()

if __name__ == "__main__":
    query_rom_bytes = read_rom(query_root_dir)
    search_rom_bytes = read_rom(search_root_dir)

    query_map_syms = parse_map(os.path.join(query_root_dir, "build", "marioparty3.map"))
    search_map_syms = parse_map(os.path.join(search_root_dir, "build", "marioparty.map"))

    query_map_offsets = get_map_offsets(query_map_syms)
    search_map_offsets = get_map_offsets(search_map_syms)
    
    query_files = get_all_s_files(query_asm_dir)
    search_files = get_all_s_files(search_asm_dir)

    all_matches(True)

    # if query_dir is not None:
    #     files = os.listdir(query_dir)
    #     for f_name in files:
    #         do_query(f_name[:-2])
    # else:
    #     if args.cross:
    #         args.threshold = 0.985
    #         do_cross_query()
    #     elif args.all:
    #         args.threshold = 0.985
    #         all_matches(True)
    #     elif args.short:
    #         args.threshold = 0.985
    #         all_matches(False)
    #     else:
    #         if args.query is None:
    #             parser.print_help()
    #         else:
                
