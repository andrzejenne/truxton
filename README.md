# Truxton/Tatsujin
MiSTerFPGA Truxton/Tatsujin is a standalone core extracted from work of [Darren_O's Zero Wing core](https://github.com/va7deo/zerowing) and work done by 
[atrac17](https://github.com/atrac17/zerowing) and [blackwing](https://github.com/blackwine/zerowing).

## Actual State

Working without screwed tiles, thanks to blackwine.

I have discovered, int_en_cs address was set differently, which prevented proper boot.

Also the scroll_y_offset was wrong. It should be 16 for truxton. 

## What has been done

### 2.2.2022

* merged whole zerowing work
* removed unnecessary parts from the chip_select.v
* updated bcu code according to blk_yn findings

### initial version:

* Memory mapping has been updated using mame toaplan1.cpp driver.
* Second rom (prog_rom_2) and whole segment in rom_controller.v has been disabled.

## Building

spawn docker container:
```bash
docker-compose run builder bash
```
in container:
```
cd /app
/opt/intelFPGA_lite/quartus/bin/quartus_sh --flow compile truxton.qsf
```
rbf can be found in output_files

## Installation
* put releases/truxton.rbf into /media/fat/_Arcade/cores
* put releases/Truxton - Tatsujin - standalone core.mra into /media/fat/_Arcade
* run update_all or put truxton.zip in /media/fat/games/mame 

I take no responsibility for any damage done by using of this core.

This repo is solely for my research, you can use it at your own risk.

# TODO
* study the progress made on zerowing core, maybe I will be able to build own fpga core some day.
* archive repository once the zerowing core is released
