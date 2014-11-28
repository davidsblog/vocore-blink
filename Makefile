CC=`find /home -name mipsel-openwrt-linux-gcc -print -quit -print 2>/dev/null`
STAGE=`find /home -type d -name staging_dir -print -quit -print 2>/dev/null`

blinkmake: blink.c
	cd "$(CCDIR)";               \
	export STAGING_DIR=$(STAGE); \
	$(CC) -o blink -Os -s blink.c

.PHONY: clean

clean:
	rm -f *.o *.exe blink

