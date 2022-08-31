.PHONY: all say_Hello generate clean
CC =g++
CFLAGS =-Wall -g
all: librarytest

libmycode.o: libmycode.c mycode.h
	$(CC) $(CFLAGS) -c libmycode.c

librarytest: librarytest.c libmycode.o
	$(CC) $(CFLAGS) -o $@ $^

clean:
	rm *.o *.so librarytest main.exe
