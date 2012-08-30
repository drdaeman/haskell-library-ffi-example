Haskell/C shared library example
================================

This illustrates building a shared library (`.so`) in Haskell and calling it from C and Python.

I wrote nothing by myself, but read and pasted the code from those articles:

- [Buildings plugins as Haskell shared libs](1)
- [Building a shared library in Haskell](2)
- [Using both Python & Haskell with ctypes](3)

I've made sure everything compiles and works as expected on Ubuntu 12.04 x86_64 with GHC 7.4.1
from standard Ubuntu repositories. Edit `Makefile` if you have another version (there's no autoconf,
so no `libHSrts-*.so` version detection).

Use `make run` to build and run examples.


[1]: http://www.well-typed.com/blog/30
[2]: http://weblog.haskell.cz/pivnik/building-a-shared-library-in-haskell/
[3]: http://wiki.python.org/moin/PythonVsHaskell#Using_both_Python_.26_Haskell_with_ctypes_.28-.3B
