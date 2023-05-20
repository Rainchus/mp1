import os
import subprocess
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
                command = "(cp $in $out) && (sha1sum -c marioparty.sha1)",
                description = "Creating rom z64...",
                depfile = "$out.d",
                deps = "gcc"
)

ninja_file.rule('make_expected_folder',
                command = "(cp $in $out) && (sha1sum -c marioparty.sha1)",
                description = "Making expected folder...",
)

# Traverse each subdirectory recursively and find all C files
def append_extension(filename, extension='.o'):
    return filename + extension

def append_prefix(filename, extension):
    return extension + filename

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

# Write the rules for .c files
for c_file in c_files:
    if "src/mod" in os.path.relpath(c_file):
        continue
    if os.path.basename(c_file) in misc_files:
        ninja_file.build("build/" + append_extension(c_file), "misc_cc", c_file)
    elif os.path.basename(c_file) in optO0_files:
        ninja_file.build("build/" + append_extension(c_file), "O0_cc", c_file)
    elif os.path.basename(c_file) in optO3_files:
        ninja_file.build("build/" + append_extension(c_file), "O3_cc", c_file)
    elif "src/lib" in os.path.relpath(c_file):
        ninja_file.build("build/" + append_extension(c_file), "lib_cc", c_file)
    elif os.path.basename(c_file) in optO2_files:
        ninja_file.build("build/" + append_extension(c_file), "O2_cc", c_file)
    else:
        ninja_file.build("build/" + append_extension(c_file), "main_cc", c_file)

# Write the rules for .s files
for s_file in s_files:
    if "asm/nonmatchings" in s_file:
        continue
    if "src/mod" in os.path.relpath(s_file):
        continue
    ninja_file.build("build/" + append_extension(s_file), "s_file", s_file)

for bin_file in bin_files:
    ninja_file.build("build/" + append_extension(bin_file), "bin_file", bin_file)

ninja_file.build("build/marioparty.elf", "make_elf ", o_files)
ninja_file.build("build/marioparty.bin", "make_rom_bin ", "build/marioparty.elf")
ninja_file.build("build/marioparty.z64", "make_rom_z64 ", "build/marioparty.bin")
ninja_file.build("build/marioparty.ok", "make_expected_folder ", "build/marioparty.z64")
print ("build.ninja generated")
ninja_file.close()