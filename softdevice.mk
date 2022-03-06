softdevice_HEX := lib/nrf-softdevice/$(softdevice_VERSION)/$(softdevice_VERSION)_softdevice.hex

ifeq ($(DEBUG_ADAPTER),jlink)
$(eval $(call generate_jlink_upload_rule,upload-softdevice,$(softdevice_HEX)))
else
$(error "Unsupported debug adapter")
endif

upload: upload-softdevice
debug-deps: upload-softdevice
