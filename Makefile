CC=`find /home -name mipsel-openwrt-linux-gcc -print -quit`
CCDIR="dirname $(CC)"
BUILDDIR=$$PWD

blinkmake: blink.c
	cd $(CCDIR)/../../;           \
	export STAGING_DIR=$$PWD;     \
	cd $(BUILDDIR);               \
	$(CC) -o blink -Os -s blink.c

.PHONY: clean

clean:
	rm -f *.o *.exe blink

