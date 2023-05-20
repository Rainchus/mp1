### Build Options ###

BASEROM      := baserom.us.z64
TARGET       := marioparty
COMPARE      ?= 1
NON_MATCHING ?= 0
CHECK        ?= 1
VERBOSE      ?= 0

# Patches
# PATCHES_ASFLAGS := --defsym MP_SAVETYPE_PATCH=1

# Fail early if baserom does not exist
ifeq ($(wildcard $(BASEROM)),)
$(error Baserom `$(BASEROM)' not found.)
endif

# NON_MATCHING=1 implies COMPARE=0
ifeq ($(NON_MATCHING),1)
override COMPARE=0
endif

ifeq ($(VERBOSE),0)
V := @
endif

ifeq ($(OS),Windows_NT)
  DETECTED_OS=windows
else
  UNAME_S := $(shell uname -s)
  ifeq ($(UNAME_S),Linux)
    DETECTED_OS=linux
  endif
  ifeq ($(UNAME_S),Darwin)
    DETECTED_OS=macos
    MAKE=gmake
    CPPFLAGS += -xc++
  endif
endif


### Output ###

BUILD_DIR := build
ROM       := $(BUILD_DIR)/$(TARGET).z64
ELF       := $(BUILD_DIR)/$(TARGET).elf
LD_SCRIPT := $(TARGET).ld
LD_MAP    := $(BUILD_DIR)/$(TARGET).map


### Tools ###

PYTHON     := python3
N64CKSUM   := $(PYTHON) tools/n64cksum.py
SPLAT_YAML := marioparty.yaml
SPLAT      := $(PYTHON) tools/splat/split.py $(SPLAT_YAML)
EMULATOR   := mupen64plus
DIFF       := diff

CROSS    := mips-linux-gnu-
AS       := $(CROSS)as
LD       := $(CROSS)ld
OBJCOPY  := $(CROSS)objcopy
STRIP    := $(CROSS)strip

CC       := tools/gcc_2.7.2/$(DETECTED_OS)/gcc
CC_HOST  := gcc
CPP      := cpp -P

PRINT := printf '
 ENDCOLOR := \033[0m
 WHITE     := \033[0m
 ENDWHITE  := $(ENDCOLOR)
 GREEN     := \033[0;32m
 ENDGREEN  := $(ENDCOLOR)
 BLUE      := \033[0;34m
 ENDBLUE   := $(ENDCOLOR)
 YELLOW    := \033[0;33m
 ENDYELLOW := $(ENDCOLOR)
 PURPLE    := \033[0;35m
 ENDPURPLE := $(ENDCOLOR)
ENDLINE := \n'

### Compiler Options ###

ASFLAGS        := -G 0 -I include -mips3 -mabi=32
CFLAGS         := -G0 -mips3 -mgp32 -mfp32 -Wa,--vr4300mul-off -D_LANGUAGE_C 
CPPFLAGS       := -I. -I include -I include/PR -I include/engine -I include/gcc -I $(BUILD_DIR)/include -I src -DF3DEX_GBI_2
LDFLAGS        := -T undefined_syms.txt -T undefined_funcs.txt -T undefined_funcs_auto.txt -T undefined_syms_auto.txt -T $(LD_SCRIPT) -Map $(LD_MAP) --no-check-sections
CHECK_WARNINGS := -Wall -Wextra -Wunused-but-set-variable -Wno-format-security -Wno-unused-parameter -Wno-sign-compare -Wno-unused-variable -Wno-pointer-to-int-cast -Wno-int-to-pointer-cast -m32
CFLAGS_CHECK   := -fsyntax-only -fsigned-char -nostdinc -fno-builtin -D CC_CHECK -D _LANGUAGE_C -std=gnu90 $(CHECK_WARNINGS)

ifneq ($(CHECK),1)
CFLAGS_CHECK += -w
endif

OPTFLAGS := -O1

### Sources ###

# Object files
OBJECTS := $(shell grep -E 'build.+\.o' marioparty.ld -o)
DEPENDS := $(OBJECTS:=.d) 

### Targets ###

#build/src/libultra/os/%.o: CFLAGS := -O2 $(CFLAGSCOMMON)
#build/src/libultra/libc/%.o: CFLAGS := -O2 $(CFLAGSCOMMON)
#build/src/lib/%.o: CFLAGS := -O2 $(CFLAGSCOMMON)

all: $(ROM)

-include $(DEPENDS)

clean:
	$(V)rm -rf build

distclean: clean
	$(V)rm -rf asm
	$(V)rm -rf assets
	$(V)rm -f *auto.txt
	$(V)rm -f marioparty.ld
	$(V)rm -f include/ld_addrs.h

setup: distclean split

split:
	$(V)$(SPLAT)

test: $(ROM)
	$(V)$(EMULATOR) $<

# Flags for individual files. TODO: move these to a common directory and make this a directory thing instead
build/src/lib/%.c.o: OPTFLAGS = -O3 -funsigned-char
build/src/lib/%.c.o: CFLAGS = -G0 -mips3 -mgp32 -mfp32 -D_MIPS_SZLONG=32 -D_LANGUAGE_C -DF3DEX_GBI
build/src/lib/%.c.o: CPPFLAGS = -I include -I include/PR -I include/gcc -I $(BUILD_DIR)/include -I src -DNDEBUG -D_MIPS_SZLONG=32 -DF3DEX_GBI_2

# Special flags since these functions have a mono sound patch.
build/src/lib/2.0I/audio/synsetpan.c.o: OPTFLAGS = -O0
build/src/lib/2.0I/audio/synstartvoiceparam.c.o: OPTFLAGS = -O0

build/src/engine/math.c.o: CFLAGS = -G0 -mips3 -mgp32 -mfp32 -D_LANGUAGE_C

# mul nops included in the 3AC60.c and 48D90.c (Maybe only one func uses --vr4300mul-off)
build/src/3AC60.c.o: CFLAGS = -G0 -mips3 -mgp32 -mfp32 -D_LANGUAGE_C
build/src/48D90.c.o: CFLAGS = -G0 -mips3 -mgp32 -mfp32 -D_LANGUAGE_C

build/src/ABCD0.c.o: OPTFLAGS = -O0
build/src/ACA90.c.o: OPTFLAGS = -O0
build/src/ACCB0.c.o: OPTFLAGS = -O0
build/src/ACF80.c.o: OPTFLAGS = -O0
build/src/AD380.c.o: OPTFLAGS = -O0
build/src/AD740.c.o: OPTFLAGS = -O0
build/src/ADA70.c.o: OPTFLAGS = -O0
build/src/ADBD0.c.o: OPTFLAGS = -O0
build/src/ADF70.c.o: OPTFLAGS = -O0
build/src/AE150.c.o: OPTFLAGS = -O0
build/src/AE630.c.o: OPTFLAGS = -O0
build/src/AE820.c.o: OPTFLAGS = -O0
build/src/AED10.c.o: OPTFLAGS = -O0
build/src/AEF30.c.o: OPTFLAGS = -O0
build/src/AF450.c.o: OPTFLAGS = -O0
build/src/AF6C0.c.o: OPTFLAGS = -O0
build/src/AF960.c.o: OPTFLAGS = -O0
build/src/AFBD0.c.o: OPTFLAGS = -O0
build/src/AFE60.c.o: OPTFLAGS = -O0
build/src/AFF70.c.o: OPTFLAGS = -O0
build/src/B07B0.c.o: OPTFLAGS = -O0
build/src/B0BA0.c.o: OPTFLAGS = -O0
build/src/B0FC0.c.o: OPTFLAGS = -O0
build/src/B1930.c.o: OPTFLAGS = -O0
build/src/B1B60.c.o: OPTFLAGS = -O0
build/src/B1DC0.c.o: OPTFLAGS = -O0
build/src/B1FD0.c.o: OPTFLAGS = -O0
build/src/B22E0.c.o: OPTFLAGS = -O0
build/src/B2310.c.o: OPTFLAGS = -O0
build/src/89EA0.c.o: OPTFLAGS = -O0
build/src/A2080.c.o: OPTFLAGS = -O0
build/src/A21C0.c.o: OPTFLAGS = -O0
build/src/A3370.c.o: OPTFLAGS = -O0
build/src/A27D0.c.o: OPTFLAGS = -O0
build/src/95F40.c.o: OPTFLAGS = -O2


# Compile .c files with kmc gcc (use strip to fix objects so that they can be linked with modern gnu ld) 
$(BUILD_DIR)/src/%.c.o: src/%.c
	@$(PRINT)$(GREEN)Compiling C file: $(ENDGREEN)$(BLUE)$<$(ENDBLUE)$(ENDLINE)
	@mkdir -p $(shell dirname $@)
	@$(CC_HOST) $(CFLAGS_CHECK) $(CPPFLAGS) -MMD -MP -MT $@ -MF $@.d $<
	$(V)export COMPILER_PATH=tools/gcc_2.7.2/$(DETECTED_OS) && $(CC) $(OPTFLAGS) $(CFLAGS) $(CPPFLAGS) -c -o $@ $<
	@$(STRIP) $@ -N dummy-symbol-name

# Assemble .s files with modern gnu as
$(BUILD_DIR)/asm/%.s.o: asm/%.s
	@$(PRINT)$(GREEN)Assembling asm file: $(ENDGREEN)$(BLUE)$<$(ENDBLUE)$(ENDLINE)
	@mkdir -p $(shell dirname $@)
	$(V)$(AS) $(ASFLAGS) -o $@ $<

# Create .o files from .bin files.
$(BUILD_DIR)/%.bin.o: %.bin
	@$(PRINT)$(GREEN)objcopying binary file: $(ENDGREEN)$(BLUE)$<$(ENDBLUE)$(ENDLINE)
	@mkdir -p $(shell dirname $@)
	$(V)$(LD) -r -b binary -o $@ $<

# Link the .o files into the .elf
$(BUILD_DIR)/$(TARGET).elf: $(OBJECTS)
	@$(PRINT)$(GREEN)Linking elf file: $(ENDGREEN)$(BLUE)$@$(ENDBLUE)$(ENDLINE)
	$(V)$(LD) $(LDFLAGS) -o $@

# Convert the .elf to the final rom
$(ROM): $(BUILD_DIR)/$(TARGET).elf
	@$(PRINT)$(GREEN)Creating z64: $(ENDGREEN)$(BLUE)$@$(ENDBLUE)$(ENDLINE)
	$(V)$(OBJCOPY) $< $@ -O binary
	$(V)$(N64CKSUM) $@
ifeq ($(COMPARE),1)
	@$(DIFF) $(BASEROM) $(ROM) && printf "OK\n" || (echo 'The build succeeded, but did not match the base ROM. This is expected if you are making changes to the game. To skip this check, use "make COMPARE=0".' && false)
endif

### Make Settings ###

.PHONY: all clean distclean test setup split

# Remove built-in implicit rules to improve performance
MAKEFLAGS += --no-builtin-rules

# Print target for debugging
print-% : ; $(info $* is a $(flavor $*) variable set to [$($*)]) @true
