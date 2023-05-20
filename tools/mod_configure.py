import os
import subprocess
import fileinput
import ninja_syntax

dir_path = 'src/'
asm_path = 'asm/'
assets_path = 'assets/'
optO0_files = ['synsetpan.c', 'synstartvoiceparam.c', 'A27D0.c', 'ABCD0.c', 'ACA90.c', 'ACCB0.c', 'ACF80.c', 'AD380.c', 'AD740.c', 'ADA70.c', 'ADBD0.c', 'ADF70.c', 'AE150.c', 'AE630.c', 'AE820.c', 'AED10.c', 'AEF30.c', 'AF450.c', 'AF6C0.c', 'AF960.c', 'AFBD0.c', 'AFE60.c', 'AFF70.c', 'B07B0.c', 'B0BA0.c', 'B0FC0.c', 'B1930.c', 'B1B60.c', 'B1DC0.c', 'B1FD0.c', 'B22E0.c', 'B2310.c', '89EA0.c', 'A2080.c', 'A21C0.c', 'A3370.c']
optO2_files = ['95F40.c']
optO3_files = ['7CD60.c']
misc_files = ["48D90.c", "3AC60.c", "math.c"]

if os.name == 'nt':
    DETECTED_OS = 'windows'
else:
    uname = os.uname()
    if uname[0] == 'Linux':
        DETECTED_OS = 'linux'
    elif uname[0] == 'Darwin':
        DETECTED_OS = 'macos'
        MAKE = 'gmake'
        CPPFLAGS += '-xc++'


with open('build.ninja', 'w') as f:
    f.write(f'DETECTED_OS = {DETECTED_OS}\n')

header = (
    "BUILD_PATH = build\n"
    'CC = tools/gcc_2.7.2/$DETECTED_OS/gcc\n'
    'CC_HOST = gcc\n'
    'CPP = cpp -P\n'
    'ROM = $BUILD_PATH/marioparty.z64\n'
    'ELF = $BUILD_PATH/marioparty.elf\n'
    'LD_SCRIPT = marioparty.ld\n'
    'LD_MAP = $BUILD_PATH/marioparty.map\n'
    'ASFLAGS = -G 0 -I include -mips3 -mabi=32\n'
    'CFLAGS = -G0 -mips3 -mgp32 -mfp32 -Wa,--vr4300mul-off -D_LANGUAGE_C\n'
    'CPPFLAGS = -I. -I include -I include/PR -I include/engine -I include/gcc -I build/include -I src -DF3DEX_GBI_2 -DNDEBUG\n'
    'LDFLAGS = -T undefined_syms.txt -T undefined_funcs.txt -T undefined_funcs_auto.txt -T undefined_syms_auto.txt -T $LD_SCRIPT -Map $LD_MAP --no-check-sections\n'
    'CHECK_WARNINGS = -Wall -Wextra -Wunused-but-set-variable -Wno-format-security -Wno-unused-parameter -Wno-sign-compare -Wno-unused-variable -Wno-pointer-to-int-cast -Wno-int-to-pointer-cast -m32\n'
    'CFLAGS_CHECK = -fsyntax-only -fsigned-char -nostdinc -fno-builtin -D CC_CHECK -D _LANGUAGE_C -std=gnu90 $CHECK_WARNINGS\n'
    'AS = mips-linux-gnu-as\n'
    'LD = mips-linux-gnu-ld\n'
    'OBJCOPY = mips-linux-gnu-objcopy\n'
    'STRIP = mips-linux-gnu-strip\n'
    'OPTFLAGS = -O1\n'
    'MAKE_EXPECTED = tools/make_expected.py\n'
    '\n'
)

#patch MainLoop.s to dma our custom code, then proceed as normal
# Open the file for reading
with open('asm/nonmatchings/59E80/func_8005B6D0.s', 'r') as file:
    # Read the contents of the file
    lines = file.readlines()

# Replace lines 9 through 23 with the new text
lines[9:23] = [
    '/* 5C2E8 8005B6E8 */  lui $a0, %hi(mod_ROM_START)\n',
    '/* 5C2EC 8005B6EC */  addiu $a0, $a0, %lo(mod_ROM_START)\n',
    '/* 5C2F0 8005B6F0 */  lui $a1, %hi(mod_VRAM)\n',
    '/* 5C2F4 8005B6F4 */  addiu $a0, $a0, %lo(mod_VRAM)\n',
    '/* 5C2F8 8005B6F8 */  lui $a2, %hi(mod_ROM_END)\n',
    '/* 5C2FC 8005B6FC */  addiu $a2, $a2, %lo(mod_ROM_END)\n',
    '/* 5C300 8005B700 */  lui $a3, %hi(mod_ROM_START)\n',
    '/* 5C304 8005B704 */  addiu $a3, $a3, %lo(mod_ROM_START)\n',
    '/* 5C308 8005B708 */  subu $a2, $a2, $a3\n',
    '/* 5C30C 8005B70C */  jal HuRomDmaCodeRead\n',
    '/* 5C310 8005B710 */  nop\n',
    '/* 5C314 8005B714 */  J mod_boot_func\n',
    '/* 5C318 8005B718 */  nop\n'
]

# Open the file for writing
with open('asm/nonmatchings/59E80/func_8005B6D0.s', 'w') as file:
    # Write the modified contents back to the file
    file.writelines(lines)


# # define the path to the file we want to modify
# filepath = "src/engine/gameman.c"

# # read in the contents of the file
# with open(filepath, "r") as f:
#     filedata = f.read()

# # define the text we want to search for and replace
# old_text = "void func_8001A454(void) {\n    while (1) {\n        SleepVProcess();"
# new_text = "void func_8001A454(void) {\n    while (1) {\n        cPerFrameFunction();"

# # do the replacement
# filedata = filedata.replace(old_text, new_text)

# # write the modified contents back to the file
# with open(filepath, "w") as f:
#     f.write(filedata)

file_path = "src/mod/mod_boot_func_hook.s"

if not os.path.exists(file_path):
    with open(file_path, "w") as f:
        f.write("""\
	.include "macro.inc"
	.set noat
	.set noreorder

glabel mod_boot_func
    jal cBootFunction
    nop
/* 5C2E4 8005B6E4 3C01800E */  lui        $at, %hi(D_800D8910)
/* 5C2E8 8005B6E8 AC318910 */  sw         $s1, %lo(D_800D8910)($at)
/* 5C2EC 8005B6EC 0C00EDA9 */  jal        MallocPerm
/* 5C2F0 8005B6F0 24040010 */   addiu     $a0, $zero, 0x10
/* 5C2F4 8005B6F4 00408021 */  addu       $s0, $v0, $zero
/* 5C2F8 8005B6F8 02202021 */  addu       $a0, $s1, $zero
/* 5C2FC 8005B6FC 02002821 */  addu       $a1, $s0, $zero
/* 5C300 8005B700 0C0187FA */  jal        func_80061FE8
/* 5C304 8005B704 24060010 */   addiu     $a2, $zero, 0x10
/* 5C308 8005B708 8E020000 */  lw         $v0, 0x0($s0)
/* 5C30C 8005B70C 3C01800E */  lui        $at, %hi(D_800D8914)
/* 5C310 8005B710 AC228914 */  sw         $v0, %lo(D_800D8914)($at)
/* 5C314 8005B714 0C00EDB2 */  jal        FreePerm
/* 5C318 8005B718 02002021 */   addu      $a0, $s0, $zero
/* 5C31C 8005B71C 3C10800E */  lui        $s0, %hi(D_800D8914)
/* 5C320 8005B720 8E108914 */  lw         $s0, %lo(D_800D8914)($s0)
/* 5C324 8005B724 00108080 */  sll        $s0, $s0, 2
/* 5C328 8005B728 0C00EDA9 */  jal        MallocPerm
/* 5C32C 8005B72C 02002021 */   addu      $a0, $s0, $zero
J 0x8005B730
nop
""")

# file_path = "src/mod/mod_main.c"

# if not os.path.exists(file_path):
#     with open(file_path, "w") as f:
#         f.write("""\
# #include "common.h"

# void cBootFunction(void) {
#     //
# }

# void cPerFrameFunction(void) {
#     SleepVProcess(); //restore from hook
# }
# """)



filename = 'marioparty.ld'
mod_directory = 'src/mod'

with open(filename) as file:
    for line_number, line in enumerate(file):
        if 'romPadding_VRAM_END' in line:
            next_line = next(file, None)
            break
line_number = line_number + 1

with open(filename, 'r') as file:
    lines = file.readlines()

lines.insert(line_number, "\n\t__romPos = 0x2000000;\n")
line_number += 1

main_dir = "src/mod/"
previous_vram_end = "0x80400000"

###
def insert_section(lines, line_number, mod_directory, section_name):
    for filename_c in os.listdir(mod_directory):
        if filename_c == "mod_overlay_table.data.s":
            continue  # skip this file
        if filename_c.endswith(('.c', '.s')):
            lines.insert(line_number, f"\t\tbuild/{mod_directory}/{filename_c}.o({section_name});\n")
            line_number += 1
    return line_number

for root, dirs, files in os.walk(main_dir):
    prefix = root.replace(main_dir, "").replace("/", "_")
    if prefix:
        prefix += "_"
    else:
        prefix = "mod_"

    lines.insert(line_number, f"\t{prefix}ROM_START = __romPos;\n")
    lines.insert(line_number + 1, f"\t{prefix}VRAM = ADDR(.{prefix.rstrip('_')});\n")
    vram_address = previous_vram_end if prefix != "mod_" else "0x80400000"
    lines.insert(line_number + 2, f"\t.{prefix.rstrip('_')} {vram_address} : AT({prefix}ROM_START) SUBALIGN(16)\n")
    lines.insert(line_number + 3, "\t{\n")
    line_number += 4

    lines.insert(line_number, f"\t\t{prefix}TEXT_START = .;\n")
    line_number += 1
    line_number = insert_section(lines, line_number, root.rstrip('/'), ".text")

    lines.insert(line_number, f"\t\t{prefix}RODATA_START = .;\n")
    line_number += 1
    line_number = insert_section(lines, line_number, root.rstrip('/'), ".rodata")

    lines.insert(line_number, f"\t\t{prefix}DATA_START = .;\n")
    line_number += 1
    line_number = insert_section(lines, line_number, root.rstrip('/'), ".data")

    lines.insert(line_number, f"\t\t{prefix}BSS_START = .;\n")
    line_number += 1
    line_number = insert_section(lines, line_number, root.rstrip('/'), ".bss")

    lines.insert(line_number, "\t}\n")
    lines.insert(line_number + 1, f"\t__romPos += SIZEOF(.{prefix.rstrip('_')});\n")
    lines.insert(line_number + 2, f"\t{prefix}ROM_END = __romPos;\n")
    lines.insert(line_number + 3, f"\t{prefix}VRAM_END = .;\n")
    line_number += 4

    previous_vram_end = f"{prefix}VRAM_END"

###

with open(filename, 'w') as file:
    file.writelines(lines)

# Create a Ninja build file object
with open('build.ninja', 'a') as file:
    file.write(f'{header}')
ninja_file = ninja_syntax.Writer(open('build.ninja', 'a'))

ninja_file.rule('misc_cc',
                command = "(export COMPILER_PATH=tools/gcc_2.7.2/$DETECTED_OS && $CC $OPTFLAGS -G0 -mips3 -mgp32 -mfp32 -D_LANGUAGE_C $CPPFLAGS -c -o $out $in) && ($STRIP $out -N dummy-symbol-name)",
                description = "Compiling misc files...",
                depfile = "$out.d",
                deps = "gcc"
)

ninja_file.rule('lib_cc',
                command = "(export COMPILER_PATH=tools/gcc_2.7.2/$DETECTED_OS && $CC -O3 -funsigned-char -G0 -mips3 -mgp32 -mfp32 -D_MIPS_SZLONG=32 -D_LANGUAGE_C -DF3DEX_GBI -I include -I include/PR -I include/gcc -I build/include -I src -DNDEBUG -D_MIPS_SZLONG=32 -DF3DEX_GBI_2 -c -o $out $in) && ($STRIP $out -N dummy-symbol-name)",
                description = "Compiling lib files...",
                depfile = "$out.d",
                deps = "gcc"
)

ninja_file.rule('O0_cc',
                command = "(export COMPILER_PATH=tools/gcc_2.7.2/$DETECTED_OS && $CC -O0 $CFLAGS $CPPFLAGS -c -o $out $in) && ($STRIP $out -N dummy-symbol-name)",
                description = "Compiling O0 files...",
                depfile = "$out.d",
                deps = "gcc"
)

ninja_file.rule('main_cc',
                command = "(export COMPILER_PATH=tools/gcc_2.7.2/$DETECTED_OS && $CC -O1 $CFLAGS $CPPFLAGS -c -o $out $in) && ($STRIP $out -N dummy-symbol-name)",
                description = "Compiling O1 files...",
                depfile = "$out.d",
                deps = "gcc"
)

ninja_file.rule('O2_cc',
                command = "(export COMPILER_PATH=tools/gcc_2.7.2/$DETECTED_OS && $CC -O2 $CFLAGS $CPPFLAGS -c -o $out $in) && ($STRIP $out -N dummy-symbol-name)",
                description = "Compiling O2 files...",
                depfile = "$out.d",
                deps = "gcc"
)

ninja_file.rule('O3_cc',
                command = "(export COMPILER_PATH=tools/gcc_2.7.2/$DETECTED_OS && $CC -O3 $CFLAGS $CPPFLAGS -c -o $out $in) && ($STRIP $out -N dummy-symbol-name)",
                description = "Compiling O3 files...",
                depfile = "$out.d",
                deps = "gcc"
)

ninja_file.rule('mod_cc',
                command = "(export COMPILER_PATH=tools/gcc_2.7.2/$DETECTED_OS && $CC $OPTFLAGS $CFLAGS $CPPFLAGS -c -o $out $in) && ($STRIP $out -N dummy-symbol-name)",
                description = "Compiling mod files...",
                depfile = "$out.d",
                deps = "gcc"
)

ninja_file.rule('s_file',
                command = "$AS $ASFLAGS -o $out $in",
                description = "Assembling s files...",
                depfile = "$out.d",
                deps = "gcc"
)

ninja_file.rule('bin_file',
                command = "$LD -r -b binary -o $out $in",
                description = "Copying bin files...",
                depfile = "$out.d",
                deps = "gcc"
)

ninja_file.rule('make_elf',
                command = "$LD $LDFLAGS -o $out",
                description = "Creating elf file...",
                depfile = "$out.d",
                deps = "gcc"
)

ninja_file.rule('make_rom_bin',
                command = "$OBJCOPY -O binary $in $out",
                description = "Creating rom bin...",
                depfile = "$out.d",
                deps = "gcc"
)

ninja_file.rule('make_rom_z64',
                command = "(cp $in $out) && (./tools/n64crc/n64crc.exe $out)",
                description = "Creating rom z64...",
                depfile = "$out.d",
                deps = "gcc"
)


def append_extension(filename, extension='.o'):
    return filename + extension

def append_build_prefix(filename, prefix='build/'):
    return prefix + filename

# Traverse each subdirectory recursively and find all c files
c_files = []
for root, dirs, files in os.walk(dir_path):
    for file in files:
        if file.endswith('.c'):
            c_files.append(os.path.join(root, file))

# Traverse each subdirectory recursively and find all s files
s_files = []
for root, dirs, files in os.walk(asm_path):
    for file in files:
        if file.endswith('.s'):
            s_files.append(os.path.join(root, file))

#append mod_s_files to s_files
for root, dirs, files in os.walk(mod_directory):
    for file in files:
        if file.endswith('.s') and "mod_overlay_table.data" not in file:
            s_files.append(os.path.join(root, file))

# Traverse each subdirectory recursively and find all bin files
bin_files = []
for root, dirs, files in os.walk(assets_path):
    for file in files:
        if file.endswith('.bin'):
            bin_files.append(os.path.join(root, file))

# Combine the lists and change file extensions to .o
o_files = []
for file in c_files + s_files + bin_files:
    if 'asm/nonmatchings/' not in file:
        o_files.append(append_build_prefix(append_extension(file)))

# Write the rules for .c files
for c_file in c_files:
    if "src/mod" in os.path.relpath(c_file):
        ninja_file.build(append_build_prefix(append_extension(c_file)), "mod_cc", c_file)
    elif os.path.basename(c_file) in misc_files:
        ninja_file.build(append_build_prefix(append_extension(c_file)), "misc_cc", c_file)
    elif os.path.basename(c_file) in optO0_files:
        ninja_file.build(append_build_prefix(append_extension(c_file)), "O0_cc", c_file)
    elif os.path.basename(c_file) in optO3_files:
        ninja_file.build(append_build_prefix(append_extension(c_file)), "O3_cc", c_file)
    elif "src/lib" in os.path.relpath(c_file):
        ninja_file.build(append_build_prefix(append_extension(c_file)), "lib_cc", c_file)
    elif os.path.basename(c_file) in optO2_files:
        ninja_file.build(append_build_prefix(append_extension(c_file)), "O2_cc", c_file)
    else:
        ninja_file.build(append_build_prefix(append_extension(c_file)), "main_cc", c_file)

# Write the rules for .s files
for s_file in s_files:
    if "asm/nonmatchings" in s_file:
        continue
    elif "mod_overlay_table.data" in s_file:
        continue
    elif "overlay_table.data" in s_file:
        ninja_file.build(append_build_prefix(append_extension(s_file)), "s_file ", "src/mod/mod_overlay_table.data.s")
    else:
        ninja_file.build(append_build_prefix(append_extension(s_file)), "s_file", s_file)

for bin_file in bin_files:
    ninja_file.build(append_build_prefix(append_extension(bin_file)), "bin_file", bin_file)

ninja_file.build("build/marioparty.elf", "make_elf ", o_files)
ninja_file.build("build/marioparty.bin", "make_rom_bin ", "build/marioparty.elf")
ninja_file.build("build/marioparty.z64", "make_rom_z64 ", "build/marioparty.bin")
print ("build.ninja generated")
ninja_file.close()