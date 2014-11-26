BASE=/home/david/openwrt
STAGE=$(BASE)/staging_dir
OWBIN=$(STAGE)/toolchain-mipsel_r2_gcc-4.6-linaro_uClibc-0.9.33.2/bin
CC=$(OWBIN)/mipsel-openwrt-linux-uclibc-gcc

blinkmake: blink.c
	export STAGING_DIR=$(STAGE); $(CC) -o blink -Os -s blink.c

.PHONY: clean

clean:
	rm -f *.o *.exe blink

