# ==============================================================================
# Project Configuration
# ==============================================================================
TARGET = stm32f407_boot
BUILD_DIR = build
DEBUG = y
OPT = -Og

# ==============================================================================
# Source Files
# ==============================================================================
C_DIRS = \
boot \
platform/driver\
platform/cmsis/device \
platform/cmsis/core

C_SOURCES = $(foreach dir,$(C_DIRS),$(shell find $(dir) -name '*.c'))
ASM_SOURCES = platform/cmsis/device/startup_stm32f40_41xxx.s

# ==============================================================================
# Toolchain Definition
# ==============================================================================
TOOLCHAIN_DIR = tools/toolchain/gcc-arm-none-eabi/gcc-arm-none-eabi-10.3-2021.10
PREFIX        = $(TOOLCHAIN_DIR)/bin/arm-none-eabi-

CC     = $(PREFIX)gcc
AS     = $(PREFIX)gcc -x assembler-with-cpp
CP     = $(PREFIX)objcopy
SZ     = $(PREFIX)size
HEX    = $(CP) -O ihex
BIN    = $(CP) -O binary -S

# ==============================================================================
# Compiler & Linker Flags (CFLAGS & LDFLAGS)
# ==============================================================================
CPU = -mcpu=cortex-m4
FPU = -mfpu=fpv4-sp-d16
FLOAT-ABI = -mfloat-abi=hard
MCU = $(CPU) -mthumb $(FPU) $(FLOAT-ABI)

# C header include paths
# CORRECTED: Replaced the incorrect path with the one you provided for core_cm4.h
C_INCLUDES = \
-Iboot \
-Iplatform/driver/inc \
-Iplatform/cmsis/device \
-Iplatform/cmsis/core

# C preprocessor defines
C_DEFS = \
-DSTM32F407xx

# --- Assembly flags ---
ASFLAGS = $(MCU) -Wall -fdata-sections -ffunction-sections

# --- C flags ---
CFLAGS = $(MCU) $(C_DEFS) $(C_INCLUDES) $(OPT) -Wall -fdata-sections -ffunction-sections -std=gnu11

ifeq ($(DEBUG), y)
CFLAGS += -g -gdwarf-2
endif

CFLAGS += -MMD -MP -MF"$(@:%.o=%.d)"

# --- Linker flags ---
LDSCRIPT = platform/stm32f407vetx_flash.ld
LIBS = -lc -lm -lnosys
LIBDIR =
LDFLAGS = $(MCU) -specs=nano.specs -T$(LDSCRIPT) $(LIBDIR) $(LIBS) -Wl,-Map=$(BUILD_DIR)/$(TARGET).map,--cref -Wl,--gc-sections

# ==============================================================================
# Build Rules
# ==============================================================================
all: $(BUILD_DIR)/$(TARGET).elf $(BUILD_DIR)/$(TARGET).hex $(BUILD_DIR)/$(TARGET).bin

C_OBJECTS := $(patsubst %.c,$(BUILD_DIR)/%.o,$(C_SOURCES))
ASM_OBJECTS := $(patsubst %.s,$(BUILD_DIR)/%.o,$(ASM_SOURCES))
OBJECTS := $(C_OBJECTS) $(ASM_OBJECTS)

$(BUILD_DIR)/%.o: %.c Makefile | $(BUILD_DIR)
	@echo "CC  $<"
	@mkdir -p $(dir $@)
	$(CC) -c $(CFLAGS) -Wa,-a,-ad,-alms=$(@:.o=.lst) $< -o $@

$(BUILD_DIR)/%.o: %.s Makefile | $(BUILD_DIR)
	@echo "AS  $<"
	@mkdir -p $(dir $@)
	$(AS) -c $(ASFLAGS) $< -o $@

$(BUILD_DIR)/$(TARGET).elf: $(OBJECTS) Makefile
	@echo "LD  $@"
	$(CC) $(OBJECTS) $(LDFLAGS) -o $@
	@echo "SZ  $@"
	$(SZ) $@

$(BUILD_DIR)/%.hex: $(BUILD_DIR)/%.elf
	@echo "CP  $@"
	$(HEX) $< $@

$(BUILD_DIR)/%.bin: $(BUILD_DIR)/%.elf
	@echo "CP  $@"
	$(BIN) $< $@

$(BUILD_DIR):
	mkdir -p $@

clean:
	@echo "CLEAN"
	-rm -fR $(BUILD_DIR)

test:
	@echo "Found C sources:"
	@echo $(C_SOURCES) | tr ' ' '\n'

# Include all generated dependency files
-include $(wildcard $(BUILD_DIR)/**/*.d)
