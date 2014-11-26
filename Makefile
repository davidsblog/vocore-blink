STAGE=`find /home -name staging_dir -print -quit`
OWBIN=$(STAGE)/toolchain-mipsel_r2_gcc-4.6-linaro_uClibc-0.9.33.2/bin
CC=`find /home -name mipsel-openwrt-linux-uclibc-gcc -print -quit`

blinkmake: blink.c
	export STAGING_DIR=$(STAGE); $(CC) -o blink -Os -s blink.c

.PHONY: clean

clean:
	rm -f *.o *.exe blink

