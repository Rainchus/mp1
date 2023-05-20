import os
import subprocess

dir_path = 'src/'
asm_path = 'asm/'
assets_path = 'assets/'
optO0_files = ['synsetpan.c', 'synstartvoiceparam.c', 'A27D0.c', 'ABCD0.c', 'ACA90.c', 'ACCB0.c', 'ACF80.c', 'AD380.c', 'AD740.c', 'ADA70.c', 'ADBD0.c', 'ADF70.c', 'AE150.c', 'AE630.c', 'AE820.c', 'AED10.c', 'AEF30.c', 'AF450.c', 'AF6C0.c', 'AF960.c', 'AFBD0.c', 'AFE60.c', 'AFF70.c', 'B07B0.c', 'B0BA0.c', 'B0FC0.c', 'B1930.c', 'B1B60.c', 'B1DC0.c', 'B1FD0.c', 'B22E0.c', 'B2310.c', '89EA0.c', 'A2080.c', 'A21C0.c', 'A3370.c']
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

# fix patch applied by mod_configure if it exist
# open the file for reading
# with open('src/engine/gameman.c', 'r') as f:
#     filedata = f.read()

# # replace the string 'cPerFrameFunction' with 'SleepVProcess'
# newdata = filedata.replace('cPerFrameFunction', 'SleepVProcess')

# # open the file for writing and write the updated content
# with open('src/engine/gameman.c', 'w') as f:
#     f.write(newdata)

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

    'rule misc_cc\n'
    '  command = (export COMPILER_PATH=tools/gcc_2.7.2/$DETECTED_OS && $CC $OPTFLAGS -G0 -mips3 -mgp32 -mfp32 -D_LANGUAGE_C $CPPFLAGS -c -o $out $in) && ($STRIP $out -N dummy-symbol-name)\n'
    '\n'

    'rule lib_cc\n'
    '  command = (export COMPILER_PATH=tools/gcc_2.7.2/$DETECTED_OS && $CC -O3 -funsigned-char -G0 -mips3 -mgp32 -mfp32 -D_MIPS_SZLONG=32 -D_LANGUAGE_C -DF3DEX_GBI -I include -I include/PR -I include/gcc -I build/include -I src -DNDEBUG -D_MIPS_SZLONG=32 -DF3DEX_GBI_2 -c -o $out $in) && ($STRIP $out -N dummy-symbol-name)\n'
    '\n'

    'rule O0_cc\n'
    '  command = (export COMPILER_PATH=tools/gcc_2.7.2/$DETECTED_OS && $CC -O0 $CFLAGS $CPPFLAGS -c -o $out $in) && ($STRIP $out -N dummy-symbol-name)\n'
    '\n'

    'rule O2_cc\n'
    '  command = (export COMPILER_PATH=tools/gcc_2.7.2/$DETECTED_OS && $CC -O2 $CFLAGS $CPPFLAGS -c -o $out $in) && ($STRIP $out -N dummy-symbol-name)\n'
    '\n'

    'rule main_cc\n'
    '  command = (export COMPILER_PATH=tools/gcc_2.7.2/$DETECTED_OS && $CC $OPTFLAGS $CFLAGS $CPPFLAGS -c -o $out $in) && ($STRIP $out -N dummy-symbol-name)\n'
    '\n'

    'rule s_file\n'
    '  command = $AS $ASFLAGS -o $out $in\n'
    '\n'

    "rule bin_file\n"
    "  command = $LD -r -b binary -o $out $in\n"
    "\n"

    "rule make_elf\n"
    "  command = $LD $LDFLAGS -o $out\n"
    "\n"

    "rule make_rom_bin\n"
    "  command = $OBJCOPY -O binary $in $out\n"
    "\n"

    "rule make_rom_z64\n"
    "  command = (cp $in $out) && (sha1sum -c marioparty.sha1)\n"
    "\n"

    "rule make_expected_folder\n"
    "  command = (cp $in $out) && (python3 ./$MAKE_EXPECTED $in)\n"
    "\n"

)

# Traverse each subdirectory recursively and find all C files
def append_extension(filename):
    return filename + '.o'

c_files = []
for root, dirs, files in os.walk(dir_path):
    for file in files:
        if file.endswith('.c'):
            c_files.append(os.path.join(root, file))

s_files = []
for root, dirs, files in os.walk(asm_path):
    for file in files:
        if file.endswith('.s'):
            s_files.append(os.path.join(root, file))

bin_files = []
for root, dirs, files in os.walk(assets_path):
    for file in files:
        if file.endswith('.bin'):
            bin_files.append(os.path.join(root, file))

# Combine the lists and change file extensions
o_files = []
for file in c_files + s_files + bin_files:
    if 'src/mod/' not in file and not file.startswith('src/mod/'):
        if 'asm/nonmatchings/' not in file:
            o_files.append("build/" + append_extension(file))

with open('build.ninja', 'a') as f:
    f.write(header)

# Write the full path of each C file to a new text file called build.ninja
with open('build.ninja', 'a') as outfile:
    # Write the rules for the .c files
    for c_file in c_files:
        if "src/mod" in os.path.relpath(c_file):
            continue
        else:
            folder_name = os.path.basename(os.path.dirname(c_file))
            if folder_name == "mod":
                continue # skip over the file
            if os.path.basename(c_file) in misc_files:
                outfile.write("build build/" + os.path.splitext(c_file)[0] + ".c.o: " + "misc_cc " + c_file + "\n")
            elif os.path.basename(c_file) in optO0_files:
                outfile.write("build build/" + os.path.splitext(c_file)[0] + ".c.o: " + "O0_cc " + c_file + "\n")
            elif "src/lib" in os.path.relpath(c_file):
                outfile.write("build build/" + os.path.splitext(c_file)[0] + ".c.o: " + "lib_cc " + c_file + "\n")
            elif os.path.basename(c_file) == "95F40.c":
                outfile.write("build build/" + os.path.splitext(c_file)[0] + ".c.o: " + "O2_cc " + c_file + "\n")
            else:
                outfile.write("build build/" + os.path.splitext(c_file)[0] + ".c.o: " + "main_cc " + c_file + "\n")



    # Write the rules for the .s files
    for s_file in s_files:
        if "asm/nonmatchings" in s_file:
            continue
        if "src/mod" in os.path.relpath(s_file):
            continue
        outfile.write("build build/" + os.path.splitext(s_file)[0] + ".s.o: " + "s_file " + s_file + "\n")

    # Write the rules for the .bin files
    for bin_file in bin_files:
        outfile.write("build build/" + os.path.splitext(bin_file)[0] + ".bin.o: " + "bin_file " + bin_file + "\n")

    # Build the ninja rule with the .o files
    outfile.write("build build/marioparty.elf: make_elf " + " ".join(o_files) + "\n")
    outfile.write("build build/marioparty.bin: make_rom_bin build/marioparty.elf\n")
    outfile.write("build build/marioparty.z64: make_rom_z64 build/marioparty.bin\n")
    outfile.write("build build/marioparty.ok: make_expected_folder build/marioparty.z64\n")