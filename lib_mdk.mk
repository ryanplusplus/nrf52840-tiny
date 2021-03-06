$(call create_lib_with_defaults,mdk)

DEFINES += \
  NRF52840_XXAA \
  __STARTUP_CLEAR_BSS \
  __START=main \
  NRF52_ERRATA_12_ENABLE_WORKAROUND \
  NRF52_ERRATA_16_ENABLE_WORKAROUND \
  NRF52_ERRATA_31_ENABLE_WORKAROUND \
  NRF52_ERRATA_32_ENABLE_WORKAROUND \
  NRF52_ERRATA_36_ENABLE_WORKAROUND \
  NRF52_ERRATA_37_ENABLE_WORKAROUND \
  NRF52_ERRATA_57_ENABLE_WORKAROUND \
  NRF52_ERRATA_66_ENABLE_WORKAROUND \
  NRF52_ERRATA_98_ENABLE_WORKAROUND \
  NRF52_ERRATA_103_ENABLE_WORKAROUND \
  NRF52_ERRATA_108_ENABLE_WORKAROUND \
  NRF52_ERRATA_115_ENABLE_WORKAROUND \
  NRF52_ERRATA_120_ENABLE_WORKAROUND \
  NRF52_ERRATA_136_ENABLE_WORKAROUND \
  NRF52_ERRATA_182_ENABLE_WORKAROUND \
  NRF52_ERRATA_217_ENABLE_WORKAROUND \

INC_DIRS += \
  lib/CMSIS/CMSIS/Include \
  lib/nrf-mdk/$(mdk_VERSION) \

CFLAGS += -Wno-pedantic
mdk_CFLAGS += -Wno-pedantic

mdk_DEFINES := $(DEFINES)

LDFLAGS += -L lib/nrf-mdk/$(mdk_VERSION)

mdk_INC_DIRS := $(INC_DIRS) \

mdk_SYS_INC_DIRS := \

mdk_SRC_FILES := \
  lib/nrf-mdk/$(mdk_VERSION)/gcc_startup_nrf52840.S \
  lib/nrf-mdk/$(mdk_VERSION)/system_nrf52840.c \

mdk_SRC_DIRS := \
