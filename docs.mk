HARDWARE_MANUAL_URL := https://infocenter.nordicsemi.com/pdf/nRF52840_PS_v1.1.pdf

.PHONY: hardware_manual
hardware_manual:
	xdg-open $(HARDWARE_MANUAL_URL)
