# Truxton/Tatsujin
MiSTerFPGA Truxton/Tatsujin

Based on work of Darren_O's Zero Wing

## Actual State

not working ! It looks like it is stuck after rom load. 

## What has been done

Memory mapping has been updated using mame toaplan1.cpp driver.

Second rom (prog_rom_2) and whole segment in rom_controller.v has been disabled.

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

put truxton.rbf into /media/fat/_Arcade/cores
put truxton.mra into /media/fat/_Arcade

