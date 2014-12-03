CC=`find /home -name mipsel-openwrt-linux-gcc -print -quit -print 2>/dev/null`

blinkmake: blink.c
	export STAGING_DIR=$$PWD; \
	$(CC) -o blink -Os -s blink.c

.PHONY: clean

clean:
	rm -f *.o *.exe blink

