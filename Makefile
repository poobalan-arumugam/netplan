BUILDFLAGS = \
	-std=c99 \
	-Wall \
	-Werror=incompatible-pointer-types \
	$(NULL)

default: ubuntu-network-emit

ubuntu-network-emit: src/emit.c
	$(CC) $(BUILDFLAGS) $(CFLAGS) -o $@ src/emit.c `pkg-config --cflags --libs glib-2.0 yaml-0.1`

clean:
	rm -f ubuntu-network-emit

.PHONY: clean
