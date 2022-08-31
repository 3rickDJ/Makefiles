.PHONY: all say_Hello generate clean
CC =gcc
CFLAGS =-Wall -g
BINS =librarytest libmycode.os
all: $(BINS)

libmycode.o: libmycode.c mycode.h
	$(CC) $(CFLAGS) -c libmycode.c

libmycode.os: libmycode.c mycode.h
	$(CC) $(CFLAGS) -fPIC -shared -o $@ libmycode.c -lc

librarytest: librarytest.c libmycode.o
	$(CC) $(CFLAGS) -o $@ $^

clean:
	rm *.o *.so librarytest main.exe
