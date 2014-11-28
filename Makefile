CC=`find /home -name mipsel-openwrt-linux-gcc -print -quit -print 2>/dev/null`
STAGE=`find /home -type d -name staging_dir -print -quit -print 2>/dev/null`

blinkmake: blink.c
	export STAGING_DIR=$(STAGE); \
	echo "STAGING_DIR was set to: $$STAGING_DIR"; \
	$(CC) -o blink -Os -s blink.c

.PHONY: clean

clean:
	rm -f *.o *.exe blink

