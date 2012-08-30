#!/usr/bin/env python

from ctypes import *

lib = cdll.LoadLibrary('./libfoo.so')
foo = getattr(lib, "foo")
foo.restype, foo.argtypes = (c_int, [c_int])
print '{0}({1}) == {2}'.format("foo", 10, foo(10))
