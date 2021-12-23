# samd21-tiny
Sample project using [`tiny`](https://github.com/ryanplusplus/tiny) with nRF52840.

## Setup
- Install `gcc-arm-none-eabi`
- Install [`openocd`](https://sourceforge.net/p/openocd/code/ci/master/tree/)

## Use
### Compile
```shell
make -f target.mk
```

### Clean
```shell
make -f target.mk clean
```

### Erase via SWD
```shell
make -f target.mk erase
```

### Flash via SWD
```shell
make -f target.mk upload
```

## Resources
- [NRF52840 Hardware Manual](https://infocenter.nordicsemi.com/pdf/nRF52840_PS_v1.1.pdf)
- [Seeeduino XIAO BLE Pinout](https://files.seeedstudio.com/wiki/XIAO-BLE/pinout3.png)
- [Adafruit nRF52840 Feather Pinout](https://learn.adafruit.com/introducing-the-adafruit-nrf52840-feather/pinouts)
