include tools/setup.mk

TARGET := target
BUILD_DIR := ./build

mdk_VERSION := 8.44.1
softdevice_VERSION := s140_nrf52_7.3.0


CPU := cortex-m4
LINKER_SCRIPT := target.ld

SVD := lib/nrf-mdk/$(mdk_VERSION)/nrf52840.svd

DEBUG_ADAPTER ?= jlink
JLINK_DEVICE := nRF52840_xxAA
BLACK_MAGIC_PORT ?= /dev/ttyACM0
BLACK_MAGIC_POWER_TARGET ?= N

include tools/defaults.mk

INC_DIRS := \

SYS_INC_DIRS := \

SRC_FILES := \

SRC_DIRS := \
  src \
  src/board \
  src/hardware \

include lib/tiny/lib_tiny.mk
include lib_mdk.mk

include tools/tools.mk
include docs.mk

include softdevice.mk

.PHONY: watch
watch:
	@rerun "$(MAKE) --no-print-directory -f $(firstword $(MAKEFILE_LIST))"
