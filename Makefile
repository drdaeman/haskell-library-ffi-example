# Makefile

CC = gcc
HC = ghc
RTS_SUFFIX = -ghc7.4.1

.PHONY: all clean run

all: libfoo.so example

clean:
	rm libfoo.so example Foo.hi Foo.o Foo_stub.h init.o \
	    2>/dev/null || true

libfoo.so: Foo.hs init.c
	$(HC) -fPIC -optc '-DMODULE=Foo' -c init.c
	$(HC) -dynamic -shared Foo.hs init.o -o libfoo.so \
	      -lHSrts$(RTS_SUFFIX) -lpthread
	rm Foo.hi Foo.o Foo_stub.h init.o

example: example.c
	$(CC) example.c -o example -ldl

run: libfoo.so example example.py
	./example
	python ./example.py
