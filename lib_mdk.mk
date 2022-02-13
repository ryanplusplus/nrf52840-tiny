$(call create_lib_with_defaults,mdk)

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
