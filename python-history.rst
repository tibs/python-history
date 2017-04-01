.. title: An amble through the history of Python

An amble through some of Python's history
=========================================

*pointing out interesting landmarks as we go, because to do the whole thing
would take too long...*

:amble: for this purpose, to walk at an easy pace, with no particular
        destination in mind

By Tibs / Tony Ibbs, April 2017

Written using reStructuredText_.  Presented using hovercraft_.

.. _reStructuredText: http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html
.. _hovercraft: https://github.com/regebro/hovercraft

.. note:: Python has been going since the early 1990s, and to talk about all
  of its history, and the history of computing that impinges on it, would
  clearly take much too long. So this is intended to be an open-ended (i.e.,
  we don't expect to finish) talk.

  This slideshow is available as a git repository at
  https://github.com/tibs/python-history 

  Other obviously related resources:

  * http://python-history.blogspot.co.uk/ - The History of Python by Guido
  * https://www.packtpub.com/books/content/brief-history-python - A Brief
    History of Python by Sam Wood, Oct 2015
  * http://www.artima.com/intv/pythonP.html - The Making of Python - Interview
    with Guido
  * https://docs.python.org/3/license.html - history and license
  * https://www.youtube.com/channel/UChA9XP_feY1-1oSy2L7acog - PyCon UK videos
  * https://www.youtube.com/watch?v=CI_RPSbsRw8 - Pycon UK 2014 keynote: A time
    traveler's guide to Python, Jessica McKellar
  * https://www.youtube.com/watch?v=zHgASlRMpg4 - Python Tutorial: History of
    the Python Programming Language, Feb 2015


----

Why me
======

.. note::

  I don't remember exactly when I first found Python, but my first dated
  Python script is from 1994.

  My background had been with BCPL, Fortran and C (and also Emacs and
  TeX/LaTeX, which will become relevant later on.

  Work had tasked me with looking for a programming language we could embed
  into our object oriented database. At that time, the obvious choices were
  things like Tcl and various small lisps or schemes. But I also found Python,
  and fell in love with it, in large part because it was what I already wrote
  down when writing pseudo-code (with the exception of the colons - more on
  them later too). It also had much of the feel I had liked from using VMS DCL
  (Digital Command Language - a relatively sophisticated Basic descendant,
  with close integration with the operating system).

  As it happened, we didn't choose any of my found languages (we ended up with
  a simplified Pascal clone from Byte magazine), and I think at the time we
  would have thought Python was too much work to embed.

----

Where Python came from
======================

* ABC
* Readable before writable
 
  - significant indentation
  - the colon

* Perl came out in 1987
* Tcl came out in 1988, Tk round about the same time, although it was useful
  from about 1990

Named after Monty Python, not the snakes.

.. note::

  http://faculty.cs.tamu.edu/yurttas/PL/SL/python/docs/core-python-programming/html/py-faq.htm#1.2

  """1.2. Why is it called Python?

  Apart from being a computer scientist, I'm also a fan of "Monty Python's
  Flying Circus" (a BBC comedy series from the seventies, in the -- unlikely
  -- case you didn't know). It occurred to me one day that I needed a name
  that was short, unique, and slightly mysterious. And I happened to be
  reading some scripts from the series at the time... So then I decided to
  call my language Python. But Python is not a joke. And don't you associate
  it with dangerous reptiles either! (If you need an icon, use an image of the
  16-ton weight from the TV series or of a can of SPAM :-) """

  * perl: https://en.wikipedia.org/wiki/Perl
  * tcl: http://www.tcl.tk/about/history.html by Jogn Ousterhout
  * occam: https://en.wikipedia.org/wiki/Occam_(programming_language)

  NB: significant *indentation*, not significant whitespace

  History:

  - occam had significant indentation
  - haskell has two forms, but the significant indentation form is the only
    one used.
  - F# started out with only a colon delimited form, but someone introduced a
    significant indentation form, and that's now dominant (I was at a meeting
    when it was relatively new, and the people giving the talk about F#
    clearly believed it would never take off)

  According to wikipedia, this is known as the `off-side rule`_, a term which
  I hadn't previously known. The linked wikipedia article has a list of
  programming languages which use it. The idea seems to date from at least
  1966.

.. _`off-side rule`: https://en.wikipedia.org/wiki/Off-side_rule 

  * https://docs.python.org/3/faq/design.html#why-does-python-use-indentation-for-grouping-of-statements
  * https://docs.python.org/3/faq/design.html#why-are-colons-required-for-the-if-while-def-class-statements

  
  In fact the whole page at https://docs.python.org/3/faq/design.html is worth
  reading, if you haven't.

  Monty Python for pythonistas: https://www.youtube.com/watch?v=gJ4duC-V6Xw&feature=youtu.be
  (a video that gives some of the Python references, for those who didn't grow
  up with the show)

----

Why I like Python
=================
* runnable pseudo-code - especially the significant indentation
* dictionaries all the way down - high level datastructures built in
* exposes its innards - very unusually for a programming language, it allows
  itself to be modified - at least two implementations of goto (!) and Hy
* "safe"/"sane" - a sensible language written and designed by sensible people

- http://entrian.com/goto/ (goto and comefrom)
- https://github.com/snoack/python-goto
- and another https://github.com/cdjc/goto
- http://docs.hylang.org/en/latest/ - a Lisp-flavoured Python

----

What's in the timeline
======================

I cover, at least briefly, the major releases of Python (and 1.5.2), and also
things that were happening in the Python world around those times.

.. note::

  The dates given for a Python release are for the .0 release, but remember
  that most versions of Python go through several minor releases. The features
  described as new to that version may thus be from the first release or later
  minor releases.

  Lots of the information is from the "What's New in Python x.y" series of
  documents, started by Andrew Kuchling in 1999 (for 2.0). He continued until
  2.7 in 2010, by which time it was traditional/expected to have them.

  His slides for `Why projects should have What's New documents`_ are worth
  reading through.
 
.. _`Why projects should have What's New documents`: https://speakerdeck.com/akuchling/why-projects-should-have-whats-new-documents

  * http://legacy.python.org/download/releases/src/README - historical Python
    sources, up to 2.0
  * https://www.python.org/doc/versions/ - Python documentation by version, back
    to 1.4
  * https://en.wikipedia.org/wiki/History_of_Python
  * https://en.wikipedia.org/wiki/Python_%28programming_language%29
  * https://en.wikibooks.org/wiki/Python_Programming/Version_history
  * https://www.python.org/downloads/ for versions 2.7.12 - 3.6.0
  * https://www.python.org/download/releases/ for versions 1.1 - 1.6.1 (binaries)
  * http://legacy.python.org/download/releases/src/ for source releases for
    versions 1.0.1 - 2.0
  * http://legacy.python.org/dev/peps/pep-0001/
  * https://www.python.org/download/alternatives/ - Alternative Python
    implementations

----

1991 to 2018 - 27 years...

----

Before 1994
===========

* Feb 1991 **0.9.0**

* Feb 1991 **0.9.1p1**

* **0.9.2** - never properly released

* **0.9.3** - again, probably not very released

* Dec 1991 **0.9.4alpha**

* Jan 1993 **0.9.8**

.. note::

  * http://dalkescientific.com/writings/diary/archive/2009/03/27/python_0_9_1p1.html
    - Andrew Dalke resurrected Python 0.9.1 (And very primitive it is too. No
    copyright message when it starts up. Bad error reporting. Class delaration
    requires a () even when there are no parents. There's no __init__ special
    method, so the convention is to call 'Create()' yourself. Uses 'self' and
    'this' and other terms instead of only 'self'. Only understands 'single
    quote strings' and not "double quotes." )

  * http://legacy.python.org/search/hypermail/python-1992/0270.html - 0.9.4alpha
    announcement, Dec 91

  * http://legacy.python.org/search/hypermail/python-1993/0001.html -
    announcement of 0.9.8, Jan 1993

----

* Feb 1991 0.9.1p1

  - no ``__init__`` method
  - no double quote strings
  - adds ``else`` for for loops

----

* 0.9.2 - never properly released

  - semicolons to separate statements
  - ``continue``
  - ``{key: value}`` to define a dictionary
  - blank and comment lines don't need to be correctly indented(!)
  - ``1 == 1.0``
  - ``.pyc`` files
  - first ``pythonmode.el``
  - tutorial nearly complete
  - arbitrary precision integers

----

* 0.9.3 - again, probably not very released

  - ``global`` statement
  - ``class B`` allowed, instead of ``class B()``, and can do ``class B(D)``
  - C shifting and masking operators (``<<``, etc)
  - C comparison operators  (``==`` and ``!=``) - the previous ``=`` and
    ``<>`` are still allowed
  - class attributes are no long read-only

----

* Dec 1991 0.9.4alpha

  - new exceptions
  - functions are called with 0..N arguments, not just 0 or 1. So:
    ``def init(self, (x, y))`` becomes ``def init(self, x, y)``
  - ``x[-1]`` is equivalent to ``x[len(x)-1]``

----

0.9.8

  - number of arguments to a function must match number declared
  - ``*args`` introduced to allow "varargs"
  - ``sys.exitfunc`` called on exit, SIGTERM or SIGHUP
  - I/O mostly accepts any object supporting ``readline()`` or ``write()``
  - ``str()`` and ``repr()`` introduced - ``repr(x)`` entirely equivalent to
    ``\`x\```
  - ``cmp(x,y)``
  - modules struct, fcntl, md5

and from 0.9.7beta:

  - ``__getitem__`` and ``__repr__``

.. note::

  http://legacy.python.org/search/hypermail/python-1993/0001.html

  Much of it is concerned with changes to how Python is built - cross platform
  support in those days was much more complicated.

----

1994
====

* Jan **1.0**

* Oct 1994 **1.1**
  
* comp.lang.python starts up

.. note::

  * the Usenet days - back when you could read all of comp.lang.python every day

----

* Jan 1994 1.0, also comp.lang.python starts up

  - builds across many Unices without alteration, uses GNU autoconf
  - sources and standard library reorganised
  - double quotes allowed for strings
  - keyword ``exec``, replacing built in function
  - keyword ``lambda``, and new functions ``map``, ``filter``, ``reduce``
  - ``xrange``
  - ``__name__`` introduced, the ``if __name__ == '__main__': main()`` trick
    is introduced
  - printing an object uses its ``__str__`` method.

----

* Oct 1994 1.1

  - ``__getattr__`` and friends introduced
  - ``__call__``
  - threads should work on most platforms
  - tkinter
  - signal, curses, urlparse


----

Some comp.lang.python memes
---------------------------

* Guido - release a new version and go on holiday
* Guido's time machine

  * https://speakerdeck.com/pyconza/pyconza-2014-what-i-learned-about-python-and-about-guidos-time-machine-by-reading-the-python-ideas-mailing-list-by-david-mertz
  * https://archive.org/details/pyconza2014-python-ideas (video)

* https://mail.python.org/pipermail/python-list/2001-February/063576.html
  Python the role playing game
* PSU: Python Sectret Underground (who do not exist)

  * https://groups.google.com/forum/#!search/The$20PSU$27s$20Existence$20Revealed$20comp.lang.python/comp.lang.python/AFqy7ItagYM/XxW95wMEpEoJ
  * https://groups.google.com/forum/#!search/The$20PSU$27s$20Existence$20Revealed$20comp.lang.python/comp.lang.python/st0yPgpr-aU/wXTiFFAugNEJ
  * https://groups.google.com/forum/#!search/Status$20of$20the$20PSU$20comp.lang.python/comp.lang.python/7UAoH95mUpw/rrTUUXz-SmYJ
  * https://groups.google.com/forum/#!topic/comp.lang.python/VNXTFOdWPI0%5B151-175%5D
  * https://groups.google.com/forum/#!msg/comp.lang.python/7qszKYUqqwI/goDCgE78U_EJ (Roswell)
  * https://groups.google.com/forum/#!search/Status$20of$20the$20PSU$20comp.lang.python/comp.lang.python/G293F7R5_Y4/PzrfgpXGA5EJ
  * https://groups.google.com/forum/#!search/roswell$20PSU$20comp.lang.python/comp.lang.python/hxUeYn94Cis/u6xMo-MuKEkJ
  * https://groups.google.com/forum/#!search/alien$20whitespace/comp.lang.python/V4EEmLncO5E/T5be4rZAB9MJ (Alien whitespace eating nanovirus)

.. note::

  Not just from this year.



----

1995
====

* Apr (probably) **1.2**

  - docstrings

* Aug development of Grail started

* Numeric - predecessor/ancestor of Numpy

* Oct (probably) **1.3**

  - the "ni" module

* Java 1.0

* Ruby 0.95

.. note::

  Python has always had WWW tools:

  * https://www.w3.org/Tools/Python/Overview.html - the Python WWW tools

  Grail was a free extensible multi-platform web browser written in the Python
  programming language. The project was started in August 1995, with its first
  public release in November of that year.[3] The 0.3 beta contained over
  27,000 lines of Python.[3] The last official release was version 0.6 in
  1999.

  One of the major distinguishing features of Grail was the ability to run
  client-side Python code

  * https://en.wikipedia.org/wiki/Netscape started as:
  * https://en.wikipedia.org/wiki/Mosaic_(web_browser) 1992
  * https://en.wikipedia.org/wiki/Internet_Explorer 1994

  * https://en.wikipedia.org/wiki/Grail_(web_browser)
  * http://grail.sourceforge.net/
  * https://github.com/mdoege/Trail - Grail fork
  * https://github.com/ashumeow/grail - Grail fork
  * https://www.reddit.com/r/Python/comments/3dthqf/grail_a_python_web_browser_from_the_90s_written/ (1 year ago)

    * https://github.com/mdoege/grailbrowser - fork that says it works with
      Python 2.7

  * Java

    * https://en.wikipedia.org/wiki/Java_%28programming_language%29

  * Ruby - first public release 0.95, Dec 1995 (on Japanese newsgroups),
    followed by 3 more versions in 2 days

    * https://en.wikipedia.org/wiki/Ruby_(programming_language)
    * https://www.ruby-lang.org/en/about/
    * Matz (Yukihiro Matsumoto): "I wanted a scripting language that was more
      powerful than Perl, and more object-oriented than Python2." from
      http://www.linuxdevcenter.com/pub/a/linux/2001/11/29/ruby.html
      (also, he says no English documentation until 1997)

----

* Apr 1995 (probably) 1.2

  - ``import a.b.c`` and ``from a.b.c import name`` are supported, but not yet
    implemented. ``__import__`` function and ``imp`` module expose import
    functionality.
  - pickle and shelve
  - docstrings via the ``__doc__`` attribute, string literals allowed for
    modules, classes and functions (it will take quite a long while before
    everything in the standard library has doc strings - essentially until
    Python 1.5)
  - Mark Hammond's support for Windows NT
  - exceptions can be classes (all built in exceptions are still strings)

----

* Oct 1995 (probably) 1.3

  - keyword arguments (a whole new chapter in the tutorial)
  - htmllib rewritten, incompatibly
  - ``globals()`` and ``locals()`` to get the global and local variables
  - the ``ni`` module supports importing modules with hierarchical names. So,
    for instance::

      import ni
      ni.ni()
      from a.b.c import name

----

1996
====

* Oct **1.4**

.. note::

  ...


----

* Oct 1996 1.4

  - library reference now maintained in Framemaker
  - name mangling to provide a simple form of class private variables:
    ``__spam``
  - ``access`` is no longer a reserved word
  - ``lstrip`` and ``rstrip``, third argument to ``split``
  - "The PC build procedure now really works"
  - ``...`` (Ellipses) provided for use by Numerical Python
  - ``x**y`` (same as ``pow(x,y)``)
  - complex numbers


----

1997
====

* Dec **1.5**

  - "re" module introduced

* Christian Tismer starts up the `Starship Python`_

* JPython started (which became Jython in 2000)

.. _`Starship Python`: http://starship.python.net/

.. note::

  Christian Tismer:

  * see http://pyfound.blogspot.co.uk/2010/07/frank-willison-memorial-award-recipient.html
    which confirms the date when Starship Python started, and of course also
    explains why Christian Tismer got the award
  * http://starship.python.net/ - the Starship

  JPython/Jython:

  * http://www.jython.org/archive/22/history.html

    """JPython was created in late 1997 by Jim Hugunin. Jim was also the primary
    developer while he was at CNRI. In February 1999 Barry Warsaw took over as
    primary developer and released JPython version 1.1. In October 2000 Barry
    helped move the software to SourceForge where it was renamed to Jython.
    Barry then made Finn Bock the primary maintainer."""

  * http://hugunin.net/story_of_jython.html
  * https://en.wikipedia.org/wiki/Jython

  (providing Java support in Gothic - when I could run up Jython and code
  Python, I knew we'd done it)

----

* Dec 1997 1.5

  - recommends ``#!/usr/bin/env python`` instead of ``#!/usr/local/bin/python``
  - ``-O`` produces ``.pyo`` files instead of ``.pyc`` files - removes
    SET_LINENO instructions and assert statements
  - private variables starting ``__`` are now a permanent feature
  - raw strings ``r"'n"``
  - ``assert`` statement
  - ``raise SomeClass, some_value`` where ``some_value`` is not an instance of
    ``SomeClass`` raises ``SomeClass(some_value)``.
  - thread safe ``sys.exc_info()``
  - string interning
  - ``int()``, ``long()`` and ``float()`` can now take string arguments
  - the "Don Beaudry hook" for metaclasses
  - new, experimental ``re.py`` regular expression module was introduced, and
    then almost immediately replaced by an even newer one based on Philip
    Hazel's ``pcre``. The old ``regex`` module is officially obsolete, but
    still there.
  - pprint.py
  - Python builds as a single library file, libpython1.5.a
  - os.path.join (and friends) take more than two arguments
  - issubclass and isinstance
  - ``dict.get()``
  - ``import spam.ham.eggs`` supported directly, ``ni`` declared obsolete,
    ``__init__.py`` files required)
  - all standard exceptions are now classes (by default)
  - OS/2 support (!)

  PythonWin and other associated Windows support is still released separately
  by Mark Hammond.


----

1998
====

Stackless Python started

.. note::

  Obviously, that's not true (in particular, my second son was born!),
  but I don't seem to have any interesting Python information from then.

  * https://en.wikipedia.org/wiki/Stackless_Python
  * http://pyvideo.org/europython-2012/the-story-of-stackless-python.html
    (video, 54 minutes)

    """This talk gives a good overview of the status of Stackless Python: Its
    history from the beginning, its current status and its future development
    to be expected. A discussion and comparison with similar approaches like
    Greenlet, Eventlet and how they relate is also included. Stackless Python
    1.0 was started in 1998 as an implementation of true continuations, with
    all implied complications. In 2002, Stackless 2.0 was born, a complete
    rewrite. Continuations were abandoned in favor of the much easier to
    comprehend tasklets - one-shot continuations that could resume their
    current state just once, like Coroutines. In 2004, Stackless 3.0 was
    created, which merged the 2.0 features with a new concept: so-called
    “Soft-Switching”, which made the Pickling of Program State” possible. As a
    consequence, a few recent application make solely use of Program State
    Pickling, which changes the purpose of Stackless Python quite a bit. One
    example of this is the “Nagare Web Framework” which will be shown in
    examples. In the light of the popularity of a Stackless spin-off, called
    “Greenlet”, the concept of a new Stackless branch will be depicted:
    Stackless, written as a pure extension module on top of Greenlets, which
    includes State Pickling - a feature that seemed to be impossible to
    implement without changing CPython. But the impossible and ways to get
    around it was always a major topic in this project, which is going to
    augment what Stackless on PyPy already can do. Christian Tismer, creator
    of Stackless Python Perhaps with Armin Rigo as a guest, talking about
    Stackless status in PyPy. Otherwise, I will insert this myself. cheers –
    Chris"""


----

1999
====

* Apr **1.5.2**

  - documentation separated out

* Zen of Python (Tim Peters, comp.lang.python, 4 June 1999,
  https://mail.python.org/pipermail/python-list/1999-June/001951.html)

.. note::

  Why single out 1.5.2? Well, it was the last release before 1.6 and/or 2.0,
  and at the time it certainly felt like a significant thing. Indeed, I
  vaguely recall people having *serious discussions* about upgrading from 1.3
  to 1.5.2, and then again from 1.5.2 to 2.n.

  Follow ons to the Zen of Python:

    * https://www.wefearchange.org/2010/06/import-this-and-zen-of-python.html
      ("import this" from 2001)
    * https://www.python.org/dev/peps/pep-0020 PEP 20 from 2004
  

----

* Apr 1999 1.5.2

  - docs separated out into a separate distributable
  - IDLE introduced
  - bare ``raise`` re-raises
  - """Added a hack so that when you type 'quit' or 'exit' at the interpreter,
    you get a friendly explanation of how to press Ctrl-D (or Ctrl-Z) to
    exit."""
  - list ``pop`` method, experimentally
  - ``ndiff.py`` - Tim Peter's text diffing tool


----

2000
====

* Sep **1.6** penultimate CNRI version

* **1.6.1** same with a GPL compatible license

* Oct **2.0** first non-CNRI version, modern Python license

  - development now on sourceforge, opened up
  - PEPs

* Nov, reStructuredText (first drafts to DocSIG, June 2001 first release rolled out)

* Design of Perl 6 began

* Alex Martelli refers to "duck typing"

  * https://en.wikipedia.org/wiki/Duck_typing

  Alex Martelli made an early (2000) use of the term in a message_ to the comp.lang.python newsgroup:

    In other words, don't check whether it IS-a duck: check whether it
    QUACKS-like-a duck, WALKS-like-a duck, etc, etc, depending on exactly what
    subset of duck-like behaviour you need to play your language-games with.

  * Also see https://en.wikipedia.org/wiki/Duck_test

.. _message: https://groups.google.com/forum/?hl=en#!msg/comp.lang.python/CCs2oJdyuzc/NYjla5HKMOIJ

.. note::

  https://opensource.org/licenses/Python-2.0 - Python 2.0 license

  https://en.wikipedia.org/wiki/ReStructuredText

  Perl 6:

  * https://en.wikipedia.org/wiki/Perl_6
  * https://en.wikibooks.org/wiki/Perl_6_Programming/Perl_History
  * http://www.perlfoundation.org/perl6/index.cgi?timeline
    (Parrot-VM begun in 2001, initial Perl 6 compiler for it in 2002,
    Pugs came along in 2005, compiler renamed Rakudo and massively rewritten
    in 2008)
  * http://www.perlfoundation.org/perl6/index.cgi?pugs - written in Haskell
  * https://www.reddit.com/r/programming/comments/cqysn/10_years_perl_6_project_history_and_personal/

----

* Sep 2000 1.6 penultimate CNRI version
* 1.6.1 same with a GPL compatible license


.. note::

  The "What's New" notes for Python 2.0 say:

  """Python 1.6 can be thought of as the Contractual Obligations Python
  release. After the core development team left CNRI in May 2000, CNRI
  requested that a 1.6 release be created, containing all the work on Python
  that had been performed at CNRI. Python 1.6 therefore represents the state
  of the CVS tree as of May 2000, with the most significant new feature being
  Unicode support. Development continued after May, of course, so the 1.6 tree
  received a few fixes to ensure that it’s forward-compatible with Python 2.0.
  1.6 is therefore part of Python’s evolution, and not a side branch.

  So, should you take much interest in Python 1.6? Probably not. The 1.6final
  and 2.0beta1 releases were made on the same day (September 5, 2000), the
  plan being to finalize Python 2.0 within a month or so. If you have
  applications to maintain, there seems little point in breaking things by
  moving to 1.6, fixing them, and then having another round of breakage within
  a month by moving to 2.0; you’re better off just going straight to 2.0. Most
  of the really interesting features described in this document are only in
  2.0, because a lot of work was done between May and September."""

----

* Oct 2000 2.0 first non-CNRI version

  - modern Python license
  - now on sourceforge, development process opened up
  - PEPs introduced as the way to introduce changes
  - unicode added
  - list comprehensions ``[x**2 for x in range(10)]``
  - string methods (``",".join([1,2,3]``)
  - garbage collections copes with reference cycles
  - Augmented assignment (``+=`` and so on).
  - ``def f(*args, **kwargs)``
  - ``print >> file, "Hello"``
  - ``import module as name``
  - ``"%r"`` to print the representation of an object
  - ``zip``
  - dictionary ``setdefault`` (an "odd new method")
  - distutils introduced


----

2001
====

* Jun reStructuredText (first release rolled out)

* Apr **2.1** license now "Python Software Foundation License"

  - PSF

* eff-bot's favourite lamda refactoring rule::

      1) write a lambda function
      2) write a comment explaining what the heck that lambda does
      3) study the comment for a while, and think of a name that captures
         the essence of the comment
      4) convert the lambda to a def statement, using that name
      5) remove the comment 

* Tim Peters doctest (in 2.1)

  * https://docs.python.org/2/library/doctest.html
  * https://en.wikipedia.org/wiki/Doctest

* IPython started

* Numarray
* SciPy

* Parrot April Fool joke (joint development of Perl 6 and Python on the same
  interpreter, producing a new language to be called Parrot)
  http://www.perl.com/pub/2001/04/01/parrot.htm

* Dec **2.2**

  - license now definitely GPL compatible

.. note::

  * https://ipython.org/ipython-doc/1/about/history.html
  * https://en.wikipedia.org/wiki/IPython
  * Useful link that also does a brief history of IPython and Jupyter (and how to use nteract):

    http://www.numfocus.org/blog/nteract-building-on-top-of-jupyter-from-a-rich-repl-toolkit-to-interactive-notebooks

  * Travis E. Oliphant: https://www.slideshare.net/shoheihido/sci-pyhistory -
    gives dates for Matrix Object, Numeric, Numarray and NumPy (1994, 1995,
    2001 and 2005 respectively) on slide 9
    
    Says announced would create (what became) SciPy in 1999

  * https://scipy.github.io/old-wiki/pages/History_of_SciPy
  * https://en.wikipedia.org/wiki/SciPy

----

* Apr 2001 2.1 license now "Python Software Foundation License"

  - PSF "owns" Python
  - Nested scopes (off by default)
  - ``__future__`` directives introduced
  - rich comparisons (``__lt__`` and friends)
  - weak references
  - Ka Ping Yee's inspect.py and pydoc.py
  - Tim Peter's doctest.py
  - PyUnit
  - modules can define ``__all__`` to control what is visible to ``from module
    import *``


----

* Dec 2001 2.2 -> Oct 2002 2.2.2

  - 2.2 license definitely GPL compatible
  - old- and new-style classes
  - descriptors
  - the diamond rule for multiple inheritance
  - ``__getattribute__`` and ``__slots__``
  - iterators and ``__iter__``
  - simple generators - ``yield`` - with ``from __future__ import generators``
  - introduction of ``//``, and ``from __future__ import division``
  - nested scopes on by default
  - ``help()`` at the Python prompt

  - ``True`` and ``False`` appear in 2.2.1 ????


----

2002
====

* First EuroPython

* April v0.4 of reStructuredText and the associated Document Processing
  System merged and released as Docutils 0.1
  (from http://docutils.sourceforge.net/docs/ref/rst/introduction.html#history)

  See also http://tibsnjoan.co.uk/docutils.html (which contains a copy of
  David's Nov 2000 postings to the Doc-SIG)

* Apr Pyrex announced by Greg Ewing

* Tim Peters and timsort (2002)
  * https://en.wikipedia.org/wiki/Timsort
  * the source code for timsort contains wonderful explanatory comments
  * http://bugs.python.org/file4451/timsort.txt
  * http://www.drmaciver.com/2010/01/understanding-timsort-1adaptive-mergesort/

* Pypi (aka The Cheese Shop) was launched

.. note::

  * http://www.cosc.canterbury.ac.nz/greg.ewing/python/Pyrex/
  * https://en.wikipedia.org/wiki/Pyrex_(programming_language)

  * https://en.wikipedia.org/wiki/Python_Package_Index



----

2003
====

* Jul  **2.3**

* First PyCon in the USA

* PyPy project starts (see http://pypy.org/people.html)

.. note::

  * http://pypy.org/
  * https://en.wikipedia.org/wiki/PyPy#RPython

----

* Jul 2003 2.3

  - ``Set`` class in the sets module
  - generators are always present, ``yield`` is always a keyword
  - source code encodings: ``# -*- coding: UTF-8 -*-``
  - importing from zip files
  - unicode filenames on Windows NT
  - Universal newline support
  - `enumerate`` function
  - the logging package
  - ``bool`` type appears, ``True`` and ``False`` are now type ``bool``
  - csv module
  - extended slices, e.g., ``a[::2]``
  - raising a string based exception is now an error.
  - method resolution order was changed
  - ``"ab" in "abcd"`` now works
  - ``basestrings`` type added
  - itertools module
  - optparse module
  - datetime module


----

2004
====

* "Pie-thon" challenge - can Parrot run Python faster than Python itself?

* Nov **2.4**

.. note::

  Parrot was a VM that was conceived to run Perl, Python and other languages
  in common.

  * Fake Parrot interview: http://www.perl.com/pub/2001/04/01/parrot.htm
  * https://github.com/parrot is the real project
 
  Dan Sugalski made a bet with Guido van Rossum that Parrot would
  be faster (at executing a pure python benchmark of some sort (to be
  determined)) with the challenge details announced at OSCON 2003 and the
  results tried at OSCON 2004. This didn't actually come to pass, and as a
  result, Dan Sugalski got a custard-pie in the face (actually, twice, the
  second time to raise money for charity).

  * http://grokbase.com/t/perl/perl6-internals/032391mt4t/the-2004-performance-challenge-is-on
  * http://archive.oreilly.com/pub/a/oscon2004/friday/index.html - 

----

* Nov 2004 2.4

  - ``set`` and ``frozenset`` built-in types
  - generator expressions - for instance ``links = (link for link in
    get_all_links() if not link.followed)``
  - ``string.Template``
  - ``@decorator`` notation for function decorators
  - ``sorted`` and ``reversed`` functions
  - subprocess module
  - ``decimal.Decimal``
  - multi-line imports (using parentheses)
  - ``sort`` gains ``key`` and ``reverse`` mechanisms/arguments
  - ``-m`` command line switch finds the named module and runs it as a script
  - ``None`` becomes a constant
  - collections module
  - re module gained simple conditionals: ``(?(group)A|B)``
  - doctest module was improved



----

2005
====

IronPython started

Django released

Numpy produced, by  combining Numeric and Numarray

.. note::

  * https://ironpython-test.readthedocs.io/en/latest/contents.html
  * https://ironpython-test.readthedocs.io/en/latest/license.html

    """IronPython was created in 2005 by Jim Hugunin to prove that the .NET
    Framework was a poor platform for dynamic languages. He failed to do so, and
    IronPython was born."""

  * http://ironpython.net/
  * https://en.wikipedia.org/wiki/IronPython

  * Django - started 2003, release July 2005

    * https://en.wikipedia.org/wiki/Django_(web_framework)

      """Django was born in the fall of 2003, when the web programmers at the
      Lawrence Journal-World newspaper, Adrian Holovaty and Simon Willison, began
      using Python to build applications. It was released publicly under a BSD
      license in July 2005. The framework was named after guitarist Django
      Reinhardt."""

    * http://djangobook.com/introducing-django/

  * Numpy

    * https://en.wikipedia.org/wiki/NumPy 




----

2006
====

* Sep **2.5**

.. note::

  ...


----

* Sep 2006 2.5

  - the ``with`` statement (``from __future__ import with_statement``), and contextlib
  - ``x = true_thing if condition else false_thing``, after *much* discussion,
    and a BDFL ruling
  - ``try``, ``except`` *and* ``finally`` allowed together
  - ``yield`` is now an expression: ``val = (yield i)``
  - functools, including ``functools.partial``
  - absolute and relative imports - ``from __future__ import absolute_import``
  - exceptions can be new style classes
  - ``startswith`` and ``endswith`` now accept tuples as an argument
  - ``any`` and ``all``
  - it's now (again?) legal to do ``class C(): pass``, specifying no base
    classes but giving the parameters
  - ``collections.defaultdict``
  - regex and regsub modules are finally gone
  - developers now using subversion instead of cvs
  - uuid module
  - ctypes module
  - sqlite3 module



----

2007
====

* Jul Cython officially launched

* mid 2007: first release of PyPy

  (follow up to Armin Rigo's Psyco project, 2002-2010, 1.0 release mid 2007

* Sep First PyConUK

* Oct First CamPUG meeting

.. note::

  * http://cython.org/
  * https://en.wikipedia.org/wiki/Cython

----

PyConUK
=======

From 2002 to 2006, there were Python tracks at the annual ACCU conference. In
2006, Guido van Rossum was a keynot speaker.

.. note::

   * *ACCU Apr 2002*: Heritage Motor Centre, Gaydon "including the Python UK Conference"
   * *ACCU Apr 2003*
   * *ACCU Apr 2004*: Oxford, with a 2 day Python track
   * *ACCU Apr 2005*
   * *ACCU Apr 2006*: Oxford, 2 day Python track,  Guido van Rossum as keynote speaker

   I know I was at the first of those, because I remember the venue and
   specific items on the program. I'm fairly sure of the last, because of
   Guido being a keynote speaker. I *think* the middle one is the right year,
   I know I wasn't at 2003, and I don't think I got to 2005.

   ACCU is/was relatively expensive, so I'd only go for the a couple of days.

   I got partially funded for 2002.

   ACCU Apr 2002:

   * https://mail.python.org/pipermail/python-uk/2002-February/000167.html
   * https://mail.python.org/pipermail/python-uk/2002-February/000168.html
   * http://www.gossamer-threads.com/lists/python/python/94742#94742

The *actual* UK Python conferences were started by John Pinner
and the West Midlands Python group.

   * **PyConUK 2007** and **2008**: September, Birmingham Conservatoire
   * **EuroPython 2009** and **2010**: June/July, Birmingham Conservatoire
   * **PyConUK 2011 to 2015** were in the TechnoCenter, Coventry
   * **PyConUK 2016** moved to Cardiff
   * **PyConUK 2017** will be in Cardiff again, in October

.. note::

   There were also some smaller events:

   * **Python Unconference**: one day, September 2010, Birmingham
   * **Floss UK**: one day only, October 2010, Birmingham BMI

   on years when a "proper" PythonUK didn't happen


   I got funded in 2010, and my boxx and I gave talks - my first talk at a
   PyConUK. PyconUK 2010, https://metaljoe.wordpress.com/2010/07/24/europython-2010/

     """To round off the day, I attended two talks by Richard Watts and Tony
     Ibbs of Kynesim who presented Muddle, their open source build system
     which looks very cool, and KBUS which is an elegant and lightweight
     messaging system implemented as a Linux kernel extension."""

   In the EuroPython years, people still wanted a "something" in the latter
   part of the year, hence the UnConference and the FlossUK event (which was
   also an unconference - I requested an item on using Bacula, and in the way
   of such things ended up "running" it!).  

   2014 was John Pinner's last PyConUK.

   I got funded in 2014, 2015 and 2016 by Velocix/ALU/Nokia



----

2008
====

* Oct **2.6**

  - documentation now in reStructuredText, using Sphinx

.. note:: As I remember it:

  The Python documentation was written in LaTeX, and people were very aware
  that this was seen as a big barrier, stopping contributions. But is was also
  thought to be too big a job to convert it something else.

  Georg Brandl thought differently, and suddenly one day (that's how I
  remember it!) he put up an alternative Python documentation website, using
  reStructuredText for the documentation. This meant he'd converted all the
  LaTeX to reStructuredText, and also written a framework to produce the
  website - two large tasks. That framework was originally called py-rest-doc, and of
  course became Sphinx. As I remember it, this was fairly instantly adopted as
  the new way to do Python documentation.

  * http://docutils.sourceforge.net/sandbox/py-rest-doc/
  * https://en.wikipedia.org/wiki/Sphinx_(documentation_generator)
  * Georg Brandl, 2008, for Python documentation
  * https://raw.githubusercontent.com/sphinx-doc/sphinx/master/CHANGES.old for
    old versions back to first release
  * http://pythonic.pocoo.org/2008/3/21/sphinx-is-released appears to be 400 Bad
    Request. I think http://archive.is/Dgon is an archive of it
  * Fredrik Lundh had his http://effbot.org/zone/pyref.htm An Alternative Python Reference which I think may have come first?
  * http://robertlehmann.de/img/sphinx.pdf - some history. About George Brandl
    it says """In 2008 , he received the Python Software Foundation Community Award for “building the Sphinx documentation system as an alternative to the LaTeX-based system [they] had been using previously, and converting the Python documentation to use it.”"""
  * http://pythonic.pocoo.org/2007/6/23/introducing-py-rest-doc - another 400

  - new issue tracker, Roundup

* Dec **3.0**

.. note::

  Moving from Python 2 to Python 3:

  * http://pybit.es/python-porting.html Best Practices for Compatible Python 2 and 3 Code, Mar 2017
  * http://sebastianraschka.com/Articles/2014_python_2_3_key_diff.html The key differences between Python 2.7.x and Python 3.x with examples, Jun 2014 
  * http://python-future.org/compatible_idioms.html Cheat Sheet: Writing Python 2-3 compatible code (last date 2016)
  * http://www.asmeurer.com/python3-presentation/slides.html#1 - 10 awesome
    features of Python that you can't use because you refuse to upgrade to
    Python 3 - goes up to about 3.5, Mar 2016


----

* Oct 2008 2.6 Preparing the migration path to Python 3. Development cycle for
  Python 2.6 and 3.0 was synchronised. Some of the new stuff in 3.0 is also in
  2,6.

  - ``-3`` command line switch, to warn about features that will be removed in
    Python 3.0
  - documentation now in reStructuredText using Sphinx
  - new issue tracker (Roundup)
  - ``with`` statement now always enabled, ``with`` is a keyword, more things
    support context management
  - multiprocessing package
  - string formatting with ``.format``
  - ``from __future__ import print_function``
  - now must write ``except TypeError as exc``
  - ``from __future__ import unicode_literals``
  - io module
  - abstract base classes (abc module and other things)
  - octal may be ``0o123`` as well as ``0123``
  - class decorators
  - fractions module
  - ``next(iterator, [default])``
  - ``@property`` and its friends
  - ast module
  - json module

----

* Dec 2008 3.0 So much stuff. So this is only a sample

  - obviously, everything applicable from 2.6
  - strings are unicode, bytes are not strings
  - ``print`` is now a function
  - ``0123`` is not valid, ``0o123`` is octal (and ``0b1010`` is binary)
  - some things return *views* instead of lists
  - ``1/2`` is 0.5, ``1//2`` is 0.
  - ``repr`` of a long int no longer has a trailing ``L``, because all ints
    are of the same type
  - function argument and return value annotations are introduced, but with
    no semantics
  - ``nonlocal``
  - extended iterable unpacking - e.g., ``a, *rest, b = range(5)``
  - dictionary comprehensions: ``{k: v for k, v in stuff}``
  - set literals: ``{1, 2}``
  - lots of library reorganisation
  - "unbound methods" as a concept has gone
  - more intelligent ``super``, doesn't normally need any arguments
  - ``input`` is now what was ``raw_input``
  - ``dict.has_key()`` has gone - just use ``in``
  - ``callable()`` has gone
  - lots of other stuff


----

2009
====

* Jun **3.1**

Proposed move to using Mercurial announced

.. note::

  * https://www.python.org/dev/peps/pep-0385/
  * https://arstechnica.com/information-technology/2009/03/python-adopts-the-mercurial-version-control-system/

----

* Jun 2009 3.1

  - ``collections.OrderedDict``
  - fields in ``format()`` don't need to be numbered
  - multiple context managers in one statement: ``with this() as a, that() as b:``
  - more intelligent floating point representation - e.g., ``repr(1.1)`` is
    now ``1.1``, not ``1.1000000000000001``
  - ``collections.Counter``
  - ``logging.NullHandler``
  - various useful improvements to unittest
  - importlib module
  - speed improvements in various places



----

2010
====

* Jul **2.7** Will be supported until 2020 (originally, until 2010)

* Apr2010 last release of Pyrex (0.9.9)

* Aug 2010 (?) Nuitka starts

Eric Holscher announce Read the Docs, using Sphinx to provide a public
resource for generating and presenting documentation written in
reStructuredText. For free.

.. note::

  http://ericholscher.com/blog/2010/aug/16/announcing-read-docs/

  * http://nuitka.net/
  * https://docs.python.org/3/faq/design.html#can-python-be-compiled-to-machine-code-c-or-some-other-language

  Python 2.7 will not be maintained past 2020 (https://pythonclock.org/)

----


* Jul 2010 2.7 Will be supported until 2020 (originally, until 2010)

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

2011
====

* Feb **3.2**

Python actually starts using Mercurial

* IPython Notebook added to IPython

.. note::

  * http://eli.thegreenplace.net/2011/03/18/python-development-switches-to-mercurial-source-control/


----

* Feb 2011 3.2

  - minimal stable ABI available to extension modules
  - argparse introduced, optparse still available but not recommended
  - concurrent.futures module
  - pyc repository directories - all .pyc files stored in a ``__pycache__``
    direcory, named according to the Python version
  - ``hasattr`` now calls ``getattr`` and checks for an exception
  - ``callable()`` comes back
  - lots of new stuff in existing library modules
  - there is a mercurial repository for Python, as well as subversion


----

2012
====

* Sep **3.3**

.. note::

  ...

----

* Sep 2012 3.3

  - ``yield from``
  - ``u"unicode"`` is back, to be friendlier to ex-Python 2 code
  - new modules include: ipaddress, lzma, unittest.mock, venv (virtual
    environment support built-in)
  - packages don't necessarily require ``__init__.py``, and can span
    multiple locations
  - internally, string representation changes according to the string
  - new launcher mechanism for ``.py`` files on Windows
  - reorganised OS and IO exception hierarchy
  - ``__qualname__`` represents the full path from module to functions and
    classes - e.g., ``"Class.method"``
  - more work on import, new importlib
  - hash randomisation on by default
  - no more support for OS/2 or VMS


----

2013
====

Nothing happened in 2013

.. note::

  ...




----

2014
====

* Mar **3.4**

* Jupyter announced

.. note::

  http://blog.jupyter.org/2015/04/15/the-big-split/ - the actual split into
  two projects

  """Project Jupyter is an open source project was born out of the IPython
  Project in 2014 as it evolved to support interactive data science and
  scientific computing across all programming languages""" - from
  http://jupyter.org/about.html


----

* Mar 2014 3.4 - no new syntax features

  - ensurepip module provides simpler bootstrapping of pip
  - ``codecs.encode()`` and ``codesc.decode()`` (introduced in 2.4) now
    properly documented, and have been improved.
  - asyncio module, with a provisional API
  - enum module
  - pathlib module
  - unittest ``TestCase`` has new method ``subTest()``
  - unittest provides new context manager ``assertLogs()``
  - new command line option ``-I``, isolated mode - recommended for use when
    running system scripts.


----

2015
====

* Sep **3.5**

.. note::

  ...

----

* Sep 2015 3.5

  - coroutines with ``async`` and ``await``
  - ``@`` infix operator for matrix multiplication, supported by NumPy 1.10
  - more unpacking generalisations - e.g., ``[*range(4), 4]`` is ``[0, 1, 2, 3, 4]``
    (and it works for ``**`` for dictionaries as well)
  - bytes and bytearray support ``%`` formatting
  - typing module is provisional support for type hints, aimed (for instance)
    at mypy
  - os.scandir - a better and faster directory iterator
  - ``math.isclose()`` - approximate equality
  - ``.pyo`` files have gone (optimised files have a slightly different name,
    but the same extension)



----

2016
====

* Dec **3.6**

Linux kernel documentation now in reStructuredText:
https://lwn.net/Articles/705224/

.. note::

  ...

----

* Dec 2016 3.6

  - formatted string literals: ``f"This module is called {__name__}."``
  - syntax for variable (type) annotations
  - underscores allowed (ignored) in numeric literals: ``123_111_112``,
    ``0b_1100_0011``.
  - asynchronous generators ``await``
  - asynchronous comprehensions ``result = [i async for i in aiter() if i % 2]``
  - ``__init_subclass__`` classmethod will be called on the base class when a
    new subclass is created - allows customisiing subclass creation without a
    metaclass
  - ``os.PathLike`` and the ``__fspath()__`` "magic" method for file system
    paths and their ilk
  - local time disambiguation - support in datetime for when local clocks move
    back, the new ``fold`` attribute
  - Windows filesystem encoding is now UTF-8
  - class attribute definition order is preserved, as is keyword argument
    order. This brings with it a change in dictionary implementation - key order
    is now preserved (first tried out in PyPy, and dictionaries are smaller).
    This is, however, an implementation detail - the order of dictionary keys
    is still not defined (although this *might* change in the future)
  - secrets module - obvious way to reliably generate cryptographically strong
    pseudo-random values suitable for managing secrets
  - asyncio module is no longer provisional
  - typing module is still provisional
  - use of ``async`` and ``await`` as variable, class, function or module
    names will generate a DeprecationWarning. They will become keywords in 3.7


----

2017
====

* Feb CPython source moves to github

.. note::

  * https://www.infoq.com/news/2016/01/python-moving-to-github
  * https://snarky.ca/the-history-behind-the-decision-to-move-python-to-github/
  * https://www.python.org/dev/peps/pep-0512/ - Migrating from hg.python.org to GitHub
  * https://mail.python.org/pipermail/python-dev/2017-February/147341.html


----

2018
====

- **3.7** expected to be released in Jun 2018

  https://www.python.org/dev/peps/pep-0537/

.. note::

  ...



----

Fin
===

That's all folks

Written using reStructuredText_.

Presented using hovercraft_.

Sources at https://github.com/tibs/python-history 

.. vim: set filetype=rst tabstop=8 softtabstop=2 shiftwidth=2 expandtab:
