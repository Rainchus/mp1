#!/usr/bin/python3

import argparse
from collections import Counter, OrderedDict
from datetime import datetime

from Levenshtein import ratio
import os
import re
import sys

query_game = "mp1"
search_game = "marioparty3"

script_dir = os.path.dirname(os.path.realpath(__file__))
query_root_dir = script_dir + "/../../" + query_game
query_asm_dir = query_root_dir + "/asm/nonmatchings/57330/"

search_root_dir = script_dir + "/../../" + search_game
search_asm_dir = search_root_dir + "/asm/nonmatchings/"

def get_all_s_files(asm_dir):
    ret = set()
    for root, dirs, files in os.walk(asm_dir):
        for f in files:
            if f.endswith(".rodata.s"):
                continue
            elif f.endswith(".data.s"):
                continue
            elif f.endswith(".s"):
                ret.add(os.path.join(root, f))
    return ret


def diff_syms(qb, tb):
    # The minimum edit distance for two strings of different lengths is `abs(l1 - l2)`
    # Quickly check if it's impossible to beat the threshold. If it is, then return 0
    l1, l2 = len(qb), len(tb)
    if abs(l1 - l2) / (l1 + l2) > 0.015: # 1.0 - 0.985
        return 0
    r = ratio(qb, tb)
    return r

#ljust(10)
def get_hashes(file_dirs):
    string_hash_map = {}
    for d in file_dirs:
        insts = []
        with open(d) as file:
            while l := file.readline():
                if l.find("glabel"):
                    break;
            for l in file:
                if l[0] != "/": continue
                l = re.sub(r'\/[^/]*\/', '', l).lstrip().split()[0]
                insts.append(l)
            if insts:
                while insts[-1] == "nop":
                    insts.pop(-1)
            else: continue
        if len(insts) < 1:
            string_hash_map[d] = "0"
        else:
            hash_string = ""
            for i in insts:
                hash_string += str(hash(i))
            string_hash_map[d] = hash_string
    return string_hash_map


def get_matches(query_symbol):
    query_hash = query_map_hash[query_symbol]

    ret = {}
    for search_symbol in search_files:
            search_hash = search_map_hash[search_symbol]
            if len(search_hash) < 16: # Should be  == 1 or 2?
                continue
            score = diff_syms(query_hash, search_hash)
            if score >= 0.850: # short threshold
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
    num_perfect_dupes = 0

    i = 0
    while len(to_find_files):
        file = to_find_files[0]

        i += 1
        print("File matching progress: {:%}".format(i / len(query_files)), end='\r')

        if len(query_map_hash[file]) < 16: # Should be  == 1 or 2?
            to_find_files.remove(file)
            continue

        matches = get_matches(file)
        num_matches = len(matches)
        if num_matches == 0:
            to_find_files.remove(file)
            continue

        # num_undecomped_dupes += 1

        match_list = []
        for match in matches:
            match_str = "{:.3f} - {}".format(matches[match], match.split("/")[-1])
            if matches[match] >= 0.99:
                num_perfect_dupes += 1

            match_list.append(match_str)

        match_dict.update({file: (num_matches, match_list)})
        to_find_files.remove(file)

    output_match_dict(match_dict, num_perfect_dupes, i)


def output_match_dict(match_dict, num_perfect_dupes, num_checked_files):
    out_file = open(datetime.today().strftime('%Y-%m-%d-%H-%M-%S') + "_all_matches.txt", "w+")

    out_file.write("Number of s-to-find-files: " + str(len(query_files)) + "\n"
                   "Number of checked s-to-find-files: " + str(round(num_checked_files)) + "\n"
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
    query_files = get_all_s_files(query_asm_dir)
    search_files = get_all_s_files(search_asm_dir)

    query_map_hash = get_hashes(query_files)
    search_map_hash = get_hashes(search_files)

    all_matches(True)
    print("DONE")

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
                
