TARGET := target
BUILD_DIR := ./build

CPU := cortex-m0
LINKER_SCRIPT := lib/nrf-mdk/8.44.1/nrf52840_xxaa.ld

SVD := lib/nrf-mdk/8.44.1/nrf52840.svd

DEBUG_ADAPTER ?= jlink
JLINK_DEVICE := nRF52840_xxAA
BLACK_MAGIC_PORT ?= /dev/ttyACM0
BLACK_MAGIC_POWER_TARGET ?= N

DEFINES := \
  DEVELOP_IN_NRF52840 \
  NRF52840_XXAA \

include tools/defaults.mk

LDFLAGS += -L lib/nrf-mdk/8.44.1

CFLAGS += -Wno-pedantic

INC_DIRS := \
  lib/CMSIS/CMSIS/Include \
  lib/nrf-mdk/8.44.1 \

SYS_INC_DIRS := \

SRC_FILES := \
  lib/nrf-mdk/8.44.1/gcc_startup_nrf52840.S \
  lib/nrf-mdk/8.44.1/system_nrf52840.c \

SRC_DIRS := \
  src \
  src/board \
  src/hardware \

include lib_tiny.mk

include tools/tools.mk
include docs.mk

.PHONY: watch
watch:
	@rerun "$(MAKE) --no-print-directory -f $(firstword $(MAKEFILE_LIST))"
