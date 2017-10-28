.. title: An amble through the history of Python

.. This file is just the slides, without the notes. This may be useful to
.. people trying to follow along if they don't have a good view of the
.. projection at the front.
.. Of course, there is a risk it might be slightly out-of-date if the main
.. text gets changed and I forget to change this as well, but I'll try not
.. to do that!

An amble through some of Python's history
=========================================

*pointing out interesting landmarks as we go, because to do the whole thing
would take too long...*

  **amble** to walk at an easy pace, with no particular destination in mind

By Tibs / Tony Ibbs, April 2017

Written using reStructuredText_.  Presented using hovercraft_. Sources on github_

.. _reStructuredText: http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html
.. _hovercraft: https://github.com/regebro/hovercraft
.. _github: https://github.com/tibs/python-history

----

About this talk
===============

I cover, at least briefly, the major releases of Python (and 1.5.2), and also
things that were happening in the Python world around those times.

1991 to 2017 - that's 26 years...

Is it accurate?

Well, there's certainly a lot of information (and links in the notes), but
there are also many places where I'm using my own memory of events, which is
doubtless unreliable. So think of it as an informal history, at best.

----

Where Python came from
======================

* Named after Monty Python, not the snakes
* Inspired by ABC and Modula-3
* Meant to be *readable*
* Python 1.0 came out in 1994

  * Perl came out in 1987
  * Tcl came out in 1988, Tk round about the same time, although it was useful
    from about 1990
  * Java 1.0 came out in 1995

----

How I found Python
==================

I don't remember exactly when I first found Python, but my first dated
Python script is from 1994.

My background had been with BCPL, Fortran and C (and also Emacs and
TeX/LaTeX, which will become relevant later on).

When I came across Python, I fell in love with it.

----

Why I like Python
=================
* runnable pseudo-code - especially the significant indentation
* dictionaries all the way down - high level datastructures built in
* exposes its innards - very unusually for a programming language, it allows
  itself to be modified - at least two implementations of goto (!) and Hy
* "safe"/"sane" - a sensible language written and designed by sensible people

----

.. A marker to make it obvious which slides represent a whole year.
.. I'm (perhaps) chancing it a bit for portability by using direct embedding
.. of a Unicode character. The blue circle 🔵 is U+1F535

.. |year| unicode:: U+1F535

-26..-24 |year| Before 1994
=============================

Python **0.9.0** in 1991, followed by a flurry of other versions (not all
released), leading up to **0.9.8** in 1993

----

Before 1994: Feb 1991 Python 0.9.1p1
------------------------------------

* no ``__init__`` method
* no double quoted strings
* ``else`` introduced for ``for`` loops

----

Before 1994: 1991 Python 0.9.2
------------------------------

*Never properly released*

* Semicolons can be used to separate statements
* ``continue``
* ``{key: value}`` to define a dictionary
* blank and comment lines don't need to be correctly indented
* ``1 == 1.0``
* ``.pyc`` files; first ``pythonmode.el``
* arbitrary precision integers
* tutorial nearly complete

----

Before 1994: 1991 Python 0.9.3
------------------------------

*Again, probably not very released*

* ``global`` statement
* ``class B`` allowed, instead of ``class B()``, and can do ``class B(D``
* C shifting and masking operators (``<<``, etc)
* C comparison operators  (``==`` and ``!=``) - the previous ``=`` and ``<>`` are still allowed
* class attributes are no long read-only

----

Before 1994: Dec 1991 Python 0.9.4alpha
---------------------------------------

* new exceptions

* functions are called with 0..N arguments, not just 0 or 1.

    ``def init(self, (x, y))`` becomes ``def init(self, x, y)``

* ``x[-1]`` is equivalent to ``x[len(x)-1]``

----

Before 1994: Python 0.9.8
-------------------------

* number of arguments to a function must match number declared
* ``*args`` introduced to allow "varargs"
* ``sys.exitfunc`` called on exit, SIGTERM or SIGHUP
* I/O mostly accepts any object supporting ``readline()`` or ``write()``
* ``str()`` and ``repr()``
* ``cmp(x,y)``
* modules struct, fcntl, md5
* and from 0.9.7beta, ``__getitem__`` and ``__repr__``

----

-23 |year| 1994
===============

* Python **1.0**
* Python **1.1**
* **comp.lang.python** starts up

----

1994 Jan Python 1.0
--------------------

* builds across many Unices without alteration, uses GNU autoconf
* sources and standard library reorganised
* double quotes allowed for strings
* keyword ``exec``, replacing built in function
* keyword ``lambda``, and new functions ``map``, ``filter``, ``reduce``
* ``xrange``
* ``__name__`` and the ``if __name__ == '__main__': main()`` trick
* printing an object now uses its ``__str__`` method

----

1994 Oct Python 1.1
--------------------

* ``__getattr__`` and friends
* ``__call__``
* threads should work on most platforms
* modules tkinter, signal, curses, urlparse

----


Usenet and comp.lang.python
---------------------------

* The BDFL
* Guido's tendency to release a new version of Python and immediately go on holiday
* The PSA (who did exist) and the PSU (who definitely do not exist)
* Guido's time machine
* Python the role playing game
* timbot, effbot, martellibot

----

-22 |year| 1995
===============

* Python **1.2**

* Python **1.3**

* The development of Grail started

* Numeric, the predecessor/ancestor of Numpy

* Java 1.0

* Ruby 0.95

----

1995 Apr Python 1.2
--------------------

*(actual release date unsure)*

* ``import a.b.c`` and ``from a.b.c import name`` supported, but no implementation
* ``__import__`` function
* new modules: imp, pickle, shelve
* docstrings
* Mark Hammond's support for Windows NT
* exceptions can be classes

----

1995 Oct Python 1.3
--------------------

*(actual release date unsure)*

* keyword arguments (a whole new chapter in the tutorial)
* htmllib rewritten, incompatibly
* ``globals()`` and ``locals()``
* the **ni** module

----

The "ni" module
---------------

The "ni" module supports importing modules with hierarchical names. So, for instance:

.. code:: python

    import ni
    ni.ni()
    from a.b.c import name

----

-21 |year| 1996
===============

Python **1.4**

----

1996 Oct Python 1.4
--------------------

* library reference now maintained in Framemaker
* name mangling to provide a simple form of class private variables: ``__spam``
* ``access`` is no longer a reserved word
* ``lstrip`` and ``rstrip``, third argument to ``split``
* "The PC build procedure now really works"
* ``...`` (Ellipses) provided for use by Numerical Python
* ``x**y`` (same as ``pow(x,y)``)
* complex numbers

----

-20 |year| 1997
===============

* Python **1.5**

* Christian Tismer starts up the `Starship Python`_

* JPython started

.. _`Starship Python`: http://starship.python.net/

----

1997 Dec Python 1.5
--------------------

* ``#!/usr/bin/env python`` recommended, instead of ``#!/usr/local/bin/python``
* ``-O`` produces ``.pyo`` files
* private variables starting ``__`` are now a permanent feature
* ``raise SomeClass, some_value``
* thread safe ``sys.exc_info()``
* string interning
* ``int()``, ``long()`` and ``float()`` can now take string arguments
* the "Don Beaudry hook" for metaclasses
* new, experimental ``re.py`` regular expression module
* pprint.py
* Python builds as a single library file
* os.path.join (and friends) take more than two arguments
* issubclass and isinstance
* ``dict.get()``
* ``import spam.ham.eggs`` supported directly, ``ni`` declared obsolete
* all standard exceptions are now classes (by default)
* OS/2 support (!)

PythonWin and other associated Windows support is still released separately by Mark Hammond.

----

-19 |year| 1998
===============

**Stackless Python** started

**Zope** released as free software

----

Stackless Python
----------------

Stackless Python, by Christian Tismer, was a set of modification for CPython
to provide true continuations, replaced later on with tasklets.

It eventually led to the greenlets module, and is an important precursor to
PyPy.

----

Zope
----

Zope was the killer Python app that never quite became so. But it's important
in various ways:

* it's the origin of structuredText, the predecessor to reStructuredText
* it was (one of) the first companies to open source its product as a result
  of commercial advice
* it was an early non-relational database (ZODB persists Python objects)
* the Zope web interface is to Python objects
* it's still around - Pylons, Zope 2, Blue Bream (aka Zope 3)

----

-18 |year| 1999
===============

* Python **1.5.2**

* Zen of Python

----

1999 Apr Python 1.5.2
----------------------

* docs separated out
* IDLE introduced
* bare ``raise`` re-raises
* ``quit`` and ``exit`` at the Python prompt tell you how to exit
* list ``pop`` method, experimentally
* new module ndiff

----

-17 |year| 2000
===============

* Python **1.6**, the penultimate CNRI version

* Python **1.6.1**, the same with a GPL compatible license

* Python **2.0**, the first non-CNRI version, with a modern Python license

* development now on sourceforge, opened up
* PEPs

*  reStructuredText

* Alex Martelli coins "duck typing"

* Design of Perl 6 began

----

2000 Sep Python 1.6, 1.6.1
---------------------------

* Python 1.6, the penultimate CNRI version
* Python 1.6.1, the same with a GPL compatible license

----

2000 Oct Python 2.0
--------------------

The first non-CNRI version

* modern Python license
* now on sourceforge, development process opened up
* PEPs introduced as the way to introduce changes
* unicode added
* list comprehensions ``[x**2 for x in range(10)]``
* string methods (``",".join([1,2,3]``)
* garbage collections copes with reference cycles
* Augmented assignment (``+=`` and so on).
* ``def f(*args, **kwargs)``
* ``print >> file, "Hello"``
* ``import module as name``
* ``"%r"`` to print the representation of an object
* ``zip``
* dictionary ``setdefault`` (an "odd new method")
* distutils introduced


----

-16 |year| 2001
===============

* First release of reStructuredText

* Python **2.1**

* Python **2.2**

* eff-bot's favourite **lambda refactoring rule**

* Tim Peters doctest

* IPython started

* Numarray
* SciPy

* Parrot April Fool joke

* Plone released

----

eff-bot's favourite lambda refactoring rule
-------------------------------------------

::

      1) write a lambda function
      2) write a comment explaining what the heck that lambda does
      3) study the comment for a while, and think of a name that captures
         the essence of the comment
      4) convert the lambda to a def statement, using that name
      5) remove the comment 

----

2001 Apr Python 2.1
--------------------

License now "Python Software Foundation License"

* PSF "owns" Python
* Nested scopes (off by default)
* ``__future__``
* rich comparisons
* weak references
* new modules: doctest, inspect, pydoc, unittest
* ``__all__``

----

2001 Dec Python 2.2
--------------------

...followed in Oct 2002 by Python 2.2.2

* license definitely GPL compatible
* old- and new-style classes
* descriptors
* the diamond rule for multiple inheritance
* ``__getattribute__`` and ``__slots__``
* iterators and ``__iter__``
* ``from __future__ import generators`` and ``yield``
* ``from __future__ import division`` and ``//``
* nested scopes on by default
* ``help()`` at the Python prompt
* ``True`` and ``False``

----

-15 |year| 2002
===============

* First EuroPython

* Docutils 1.0

* Pyrex announced by Greg Ewing

* timsort

* Pypi (aka The Cheese Shop) was launched

* Armin Rigo starts Psyco

----

-14 |year| 2003
===============

* Python **2.3**

* First PyCon in the USA (Washington DC)

* PyPy project starts

----

2003 2.3 Python 2.3
--------------------

* ``Set`` class in the sets module
* generators are always present, ``yield`` is always a keyword
* source code encodings: ``# -*- coding: UTF-8 -*-``
* importing from zip files
* unicode filenames on Windows NT
* Universal newline support
* `enumerate`` function
* ``bool`` type appears, ``True`` and ``False`` are now type ``bool``
* extended slices, e.g., ``a[::2]``
* raising a string based exception is now an error.
* method resolution order was changed
* ``"ab" in "abcd"`` now works
* ``basestrings`` type added
* new modules: itertools, optparse, datetime, csv, logging


----

-13 |year| 2004
===============

* Python **2.4**

* "Pie-thon" challenge - can Parrot run Python faster than Python itself?

----

2004 Nov Python 2.4
--------------------

* ``set`` and ``frozenset`` built-in types
* generator expressions - for instance ``links = (link for link in get_all_links() if not link.followed)``
* ``string.Template``
* ``@decorator`` notation for function decorators
* ``sorted`` and ``reversed`` functions
* multi-line imports (using parentheses)
* ``sort`` gains ``key`` and ``reverse`` mechanisms/arguments
* ``-m`` command line switch finds the named module and runs it as a script
* ``None`` becomes a constant
* re module gained simple conditionals: ``(?(group)A|B)``
* new modules: collections, subprocess, decimal

----

-12 |year| 2005
===============

* IronPython started

* Django released

* Numpy produced, by combining Numeric and Numarray

----

-11 |year| 2006
===============

* Python **2.5**

----

2006 Sep Python 2.5
--------------------

* developers now using subversion instead of cvs
* ``from __future__ import with_statement`` and the ``with`` statement
* ``from __future__ import absolute_import``
* ``x = true_thing if condition else false_thing``, after *much* discussion, and a BDFL ruling
* ``try``, ``except`` *and* ``finally`` allowed together
* ``yield`` is now an expression: ``val = (yield i)``
* exceptions can be new style classes
* ``startswith`` and ``endswith`` now accept tuples as an argument
* ``any`` and ``all``
* it's now legal to do ``class C(): pass``, specifying no base classes
* ``collections.defaultdict``
* new modules: uuid, ctypes, sqlite3, functools, contextlib
* regex and regsub modules are finally gone

----

-10 |year| 2007
===============

* Cython officially launched

* PyPy 1.0

* First **PyConUK**

* First **CamPUG** meeting

----

PyConUK
-------

The UK Python conferences were started by John Pinner and the West Midlands
Python group in 2007.

   * **PyConUK 2007** and **2008**: September, Birmingham Conservatoire
   * **EuroPython 2009** and **2010**: June/July, Birmingham Conservatoire
   * **PyConUK 2011 to 2015** were in the TechnoCenter, Coventry
   * **PyConUK 2016** moved to Cardiff
   * **PyConUK 2017** will be in Cardiff again, in October

----

-9 |year| 2008
==============

* Python **2.6**

* Python **3.0**

----

2008 Oct Python 2.6
--------------------

Preparing the migration path to Python 3. Development cycle for Python 2.6 and
3.0 was synchronised. Some of the new stuff in 3.0 is also in 2.6.

* documentation now in reStructuredText using Sphinx
* new issue tracker (Roundup)
* ``-3`` command line switch
* ``with`` now a keyword
* string ``.format``
* ``from __future__ import print_function``
* ``from __future__ import unicode_literals``
* now must write ``except TypeError as exc``
* abstract base classes
* octal may be ``0o123`` as well as ``0123``
* class decorators
* ``next(iterator, [default])``
* ``@property`` and its friends
* new modules: ast, json, fractions, io, multiprocessing, abc

----

2008 Dec Python 3.0
--------------------

So much stuff. This is only a sample:

* everything applicable from 2.6
* strings are unicode, bytes are not strings
* ``print`` is a function
* ``0123`` is not valid, ``0o123`` is octal (and ``0b1010`` is binary)
* some things return *views* instead of lists
* ``1/2`` is 0.5, ``1//2`` is 0.
* ``repr`` of a long int no longer has a trailing ``L``
* function argument and return value annotations
* ``nonlocal``
* ``a, *rest, b = range(5)``
* ``{k: v for k, v in stuff}``
* ``{1, 2}``
* lots of library reorganisation
* "unbound methods" as a concept has gone
* more intelligent ``super``
* ``input`` is now what was ``raw_input``
* ``dict.has_key()`` has gone
* ``callable()`` has gone
* lots of other stuff

----

-8 |year| 2009
==============

* Python **3.1**

* PEP 3003: Python Language Moratorium

* Announcement of proposed move to Mercurial

.. _`PEP 3003`: https://www.python.org/dev/peps/pep-3003/

----

2009 Jun Python 3.1
--------------------

* ``collections.OrderedDict``
* fields in ``format()`` don't need to be numbered
* multiple context managers in one statement: ``with this() as a, that() as b:``
* more intelligent floating point representation - e.g., ``repr(1.1)`` is now ``1.1``, not ``1.1000000000000001``
* ``collections.Counter``
* ``logging.NullHandler``
* various useful improvements to unittest
* importlib module
* speed improvements in various places

----

-7 |year| 2010
==============

* Python **2.7**

* Last release of Pyrex (0.9.9)

* Nuitka starts

* Read the Docs
  
----

2010 Jul Python 2.7
--------------------

2.7 will be supported until 2020

Mostly backportings from 3.1

* set literals
* dictionary and set comprehensions
* multiple context managers in one ``with``
* collections.OrderedDict
* argparse
* fields in ``format()`` don't need to be numbered
* collections.Counter
* unittest greatly enhanced - becomes what was the external unittest2
* ensurepip appears in 2.7.9

----

-6 |year| 2011
==============

* Python **3.2**

* Python actually starts using Mercurial

* IPython Notebook added to IPython

----

2011 Feb Python 3.2
--------------------

* minimal stable ABI available to extension modules
* argparse introduced, optparse still available but not recommended
* concurrent.futures module
* pyc repository directories
* ``hasattr`` now calls ``getattr``
* ``callable()`` comes back
* lots of new stuff in existing library modules

----

-5 |year| 2012
==============

* Python **3.3**

----

2012 Sep Python 3.3
--------------------

* ``yield from``
* ``u"unicode"`` is back, to be friendlier to ex-Python 2 code
* ``__init__.py`` now optional, multi-directory packages
* string representation depends on the string
* new launcher mechanism for ``.py`` files on Windows
* reorganised OS and IO exception hierarchy
* ``__qualname__``
* new modules include: importlib, ipaddress, lzma, unittest.mock, venv
* hash randomisation on by default
* no more support for OS/2 or VMS

----

-4 |year| 2013
==============

The MicroPython kickstarter

----

-3 |year| 2014
==============

* Python **3.4**

* Jupyter announced

----

2014 Mar Python 3.4
--------------------

No new syntax features

* ``codecs.encode()`` and ``codesc.decode()`` improved
* unittest gains ``subTest()`` and ``assertLogs()``
* new modules: ensurepip, enum, pathlib
* asyncio module, with a provisional API
* new command line option ``-I``

----

-2 |year| 2015
==============

* Python **3.5**

----

2015 Sep Python 3.5
--------------------

* ``async`` and ``await``
* ``@`` infix operator for matrix multiplication
* more unpacking generalisations, e.g., ``[*range(4), 4]`` is ``[0, 1, 2, 3, 4]``
* bytes and bytearray support ``%`` formatting
* typing module is provisional support for type hints, aimed (for instance) at mypy
* ``os.scandir()``
* ``math.isclose()``
* ``.pyo`` files have gone

----

-1 |year| 2016
==============

* Python **3.6**

* Linux kernel documentation now in reStructuredText, using Sphinx

----

2016 Dec Python 3.6
--------------------

* formatted string literals
* syntax for variable (type) annotations
* underscores in numeric literals
* ``await`` and ``result = [i async for i in aiter() if i % 2]``
* ``__init_subclass__``
* ``os.PathLike`` and ``__fspath()__``
* ``fold()`` - local time disambiguation when clocks change
* Windows filesystem encoding is now UTF-8
* class attribute and keyword argument definition orders are preserved
* secrets module
* asyncio module is no longer provisional
* typing module is still provisional
* use of ``async`` and ``await`` will become keywords in 3.7

----

0 |year| 2017
=============

CPython source moved to github

----

+1 |year| 2018
==============

Python **3.7** is currently expected to be released in June 2018

----

Fin
===

*That's all folks*

  Written using reStructuredText_.

  Presented using hovercraft_.

  Sources at https://github.com/tibs/python-history 

.. vim: set filetype=rst tabstop=8 softtabstop=2 shiftwidth=2 expandtab:
