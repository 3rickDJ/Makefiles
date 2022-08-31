.PHONY: all say_Hello generate clean
CC =gcc
CFLAGS =-Wall -g
BINS =librarytest libmycode.os runtime_librarytest
all: $(BINS)

libmycode.o: libmycode.c mycode.h
	$(CC) $(CFLAGS) -c libmycode.c

libmycode.os: libmycode.c mycode.h
	$(CC) $(CFLAGS) -fPIC -shared -o $@ libmycode.c -lc

librarytest: librarytest.c libmycode.o
	$(CC) $(CFLAGS) -o $@ $^

runtime_librarytest: librarytest.c
	$(CC) $(CFLAGS) -o $@ $^ -L. -lmycode

clean:
	rm *.o $(BINS)
