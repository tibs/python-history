.. title: An amble through the history of Python

An amble through some of Python's history
=========================================

*pointing out interesting landmarks as we go, because to do the whole thing
would take too long...*

  **amble** to walk at an easy pace, with no particular destination in mind

By Tibs / Tony Ibbs, April 2017

Written using reStructuredText_.  Presented using hovercraft_.

.. _reStructuredText: http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html
.. _hovercraft: https://github.com/regebro/hovercraft

.. note::

  Python has been going since the early 1990s, and to talk about all
  of its history, and the history of computing that impinges on it, would
  clearly take much too long. So this is intended to be an open-ended (i.e.,
  we don't expect to finish) talk.

  This slideshow is available as a git repository at
  https://github.com/tibs/python-history 

  Other obviously related resources:

  * http://python-history.blogspot.co.uk/ - The History of Python by Guido

    * Starts at http://python-history.blogspot.co.uk/2009/04/metaclasses-and-extension-classes-aka.html

  * https://www.packtpub.com/books/content/brief-history-python - A Brief
    History of Python by Sam Wood, Oct 2015
  * http://www.artima.com/intv/pythonP.html - The Making of Python - Interview
    with Guido
  * https://docs.python.org/3/license.html - history and license

  * video: https://www.youtube.com/channel/UChA9XP_feY1-1oSy2L7acog - PyCon UK videos

  * video: https://www.youtube.com/watch?v=CI_RPSbsRw8 - Pycon UK 2014 keynote: A time
    traveler's guide to Python, Jessica McKellar

    First 7 minutes are a quick dash through the history of Python itself.

  * video: 2014 https://archive.org/details/pyconza2014-python-ideas What I learned about Python – and about Guido's time machine – by reading the python-ideas mailing list 

      * slides for the same: https://speakerdeck.com/pyconza/pyconza-2014-what-i-learned-about-python-and-about-guidos-time-machine-by-reading-the-python-ideas-mailing-list-by-david-mertz

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

.. note::

  There is too much information in this slideset to present it all. What I
  intend to do is to skim over the slides that describe what is new in each
  Python release - they're mainly there to give an idea of scope, and to act
  as a reference (of some sort) when reading this later.

  The dates given for a Python release are for the .0 release, but remember
  that most versions of Python go through several minor releases. The features
  described as new to that version may thus be from the first release or later
  minor releases.

  Lots of the information is from the "What's New in Python x.y" series of
  documents, started by Andrew Kuchling in 1999 (for 2.0). He continued until
  2.7 in 2010, by which time it was traditional/expected to have them.

  I hope I've transcribed information correctly - any mistakes are mine.
  Similarly, I've not included *all* the information for each release, and
  what is omitted is detrermined by my own preferences (at the time of making
  this set of slides), so apologies to anyone if I've left out stuff they
  would have cared about.

  By the way, Andrew Kuchling's slides for `Why projects should have What's
  New documents`_ are worth reading through.
 
  .. _`Why projects should have What's New documents`: https://speakerdeck.com/akuchling/why-projects-should-have-whats-new-documents

  General resources:

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

How I found Python
==================

I don't remember exactly when I first found Python, but my first dated
Python script is from 1994.

My background had been with BCPL, Fortran and C (and also Emacs and
TeX/LaTeX, which will become relevant later on).

When I came across Python, I fell in love with it.

.. note::

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

Why I like Python
=================
* runnable pseudo-code - especially the significant indentation
* dictionaries all the way down - high level datastructures built in
* exposes its innards - very unusually for a programming language, it allows
  itself to be modified - at least two implementations of goto (!) and Hy
* "safe"/"sane" - a sensible language written and designed by sensible people

.. note::
 
  * Not one, not two, but three ways of implementing ``goto`` in Python:

    - http://entrian.com/goto/ (goto and comefrom)
    - https://github.com/snoack/python-goto
    - and another https://github.com/cdjc/goto

  * and even a Lisp:

    - http://docs.hylang.org/en/latest/ - a Lisp-flavoured Python

----

.. A marker to make it obvious which slides represent a whole year.
.. I'm (perhaps) chancing it a bit for portability by using direct embedding
.. of a Unicode character. The blue circle 🔵 is U+1F535

.. |year| unicode:: U+1F535

-26 and on |year| Before 1994
=============================

Python **0.9.0** in 1991, followed by a flurry of other versions (not all
released), leading up to **0.9.8** in 1993

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

.. note::

  I love the fact that before 0.9.2 blank lines had to be correctly indented!

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

.. note:: The biggest change here is probably being able to assign to class
  attributes, although really this is quite a significant (non) release.

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

.. note::

  http://legacy.python.org/search/hypermail/python-1993/0001.html

  Much of it is concerned with changes to how Python is built - cross platform
  support in those days was much more complicated.

----

-23 |year| 1994
===============

* Python **1.0**
* Python **1.1**
* **comp.lang.python** starts up

.. note::

  * the Usenet days - back when you could read all of comp.lang.python every day

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

.. note:: ``exec`` will become a function again in 3.0

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

.. note::

  How many people in the audience remember/know of Usenet_? (The wikipedia
  article referenced provides a good summary.)

  .. _Usenet: https://en.wikipedia.org/wiki/Usenet

  * The origin of BDFL (Benevolent Dictator for Life): http://www.artima.com/weblogs/viewpost.jsp?thread=235725

  * PSU: Python Sectret Underground (who do not exist), a joke on the PSA
    (Python Software Association / Python Software Activity)

  * Particular postings relating to the time machine and the PSU - there are
    doubtless many more, but it can be a bit hard to search for such things:

    * 2000-01 `Time machine/Roswell`_
    * 2001-01 `Notice: State of the PSU`_
    * 2001-01 `PSU conspiracy revealed`_
    * 2001-02 `Python the RPG`_
    * 2003-03 `PSU Elections`_
    * 2003-03 `The PSU Existence Revealed`_

  * The bots - people who posted so frequently to comp.lang.python that it was
    joked that they must have been replaced by robots (I believe the timbot
    came first):
    
    * timbot: `Tim Peters`_ (timsort, doctest, floating point guru). Two
      "origins" of the timbot are preserved on the Python humour_ page:

      * https://www.python.org/doc/humor/#the-origin-of-the-great-timbot-conspiracy-theory
      * https://www.python.org/doc/humor/#the-other-origin-of-the-great-timbot-conspiracy-theory

    * fbot: `Fredrik Lundh`_ (PIL: Python Imaging Library, ElementTree, tkinter)
    * martellibot: `Alex Martelli`_ (Python in a Nutshell, Python Cookbook)

    .. _`Time machine/Roswell`: https://groups.google.com/forum/#!msg/comp.lang.python/7qszKYUqqwI/goDCgE78U_EJ
    .. _`Notice: State of the PSU`: https://groups.google.com/forum/#!search/Status$20of$20the$20PSU$20comp.lang.python/comp.lang.python/7UAoH95mUpw/rrTUUXz-SmYJ
    .. _`PSU conspiracy revealed`: https://groups.google.com/forum/#!search/The$20PSU$27s$20Existence$20Revealed$20comp.lang.python/comp.lang.python/AFqy7ItagYM/XxW95wMEpEoJ
    .. _`Python the RPG`: https://mail.python.org/pipermail/python-list/2001-February/063576.html
    .. _`PSU Elections`: https://groups.google.com/forum/#!search/Status$20of$20the$20PSU$20comp.lang.python/comp.lang.python/G293F7R5_Y4/PzrfgpXGA5EJ
    .. _`The PSU Existence Revealed`: https://groups.google.com/forum/#!search/The$20PSU$27s$20Existence$20Revealed$20comp.lang.python/comp.lang.python/st0yPgpr-aU/wXTiFFAugNEJ

    .. _humour: https://www.python.org/doc/humor
    .. _`Tim Peters`: https://www.youtube.com/watch?v=1wAOy88WxmY Interview with Tim Peters, PyCon 2006: Chatting with Tim Peters on PyPy, Python and other stuff
    .. _`Fredrik Lundh`: http://effbot.org/
    .. _`Alex Martelli`: https://en.wikipedia.org/wiki/Alex_Martelli

----

-22 |year| 1995
===============

* Python **1.2**

* Python **1.3**

* The development of Grail started

* Numeric, the predecessor/ancestor of Numpy

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

1995 Apr Python 1.2
--------------------

*(actual release date unsure)*

* ``import a.b.c`` and ``from a.b.c import name`` supported, but no implementation
* ``__import__`` function
* new modules: imp, pickle, shelve
* docstrings
* Mark Hammond's support for Windows NT
* exceptions can be classes

.. note::

  * ``import a.b.c`` and ``from a.b.c import name`` are supported, but not yet
    implemented. The ``__import__`` function and ``imp`` module expose import
    functionality.

  * docstrings are introduced for modules, classes and functions (which
    includes methods). They are stored in the (new) ``__doc__`` attribute of
    those objects. Their implementation takes advantage of the fact that
    a string literal can occur as a lone statement (as can any Python object,
    come to that), so a string literal occuring at the very start of a module, 
    or immediately after a ``class`` or ``def`` statement's ``:`` is
    "hijacked" as being a docstring.

    It will take quite a long while before everything in the standard library
    has doc strings - essentially until Python 1.5

  * exceptions can be classes, but all built in exceptions are still strings

----

1995 Oct Python 1.3
--------------------

*(actual release date unsure)*

* keyword arguments (a whole new chapter in the tutorial)
* htmllib rewritten, incompatibly
* ``globals()`` and ``locals()``
* the **ni** module

.. note::

  * Keyword arguments are introduced for the first time. They get a whole new
    chapter in the tutorial.
  * ``globals()`` and ``locals()`` are, of course, used to get the global and local variables


----

The "ni" module
---------------

The "ni" module supports importing modules with hierarchical names. So, for instance:

.. code:: python

    import ni
    ni.ni()
    from a.b.c import name

.. note::

  Named, of course, after The Knights Who Say "Ni!".

  This is clearly felt to be a hack (albeit with a cool name), but
  it's another good example of new ideas being tried out, with an actual
  implementation, before they become "proper" parts of Python

----

-21 |year| 1996
===============

Python **1.4**

.. note::

  ...


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

.. note::

  Christian Tismer:

  * see http://pyfound.blogspot.co.uk/2010/07/frank-willison-memorial-award-recipient.html
    which confirms the date when Starship Python started, and of course also
    explains why Christian Tismer got the award
  * http://starship.python.net/ - the Starship

  JPython/Jython (JPython became Jython in 2000):

  * http://www.jython.org/archive/22/history.html

    """JPython was created in late 1997 by Jim Hugunin. Jim was also the primary
    developer while he was at CNRI. In February 1999 Barry Warsaw took over as
    primary developer and released JPython version 1.1. In October 2000 Barry
    helped move the software to SourceForge where it was renamed to Jython.
    Barry then made Finn Bock the primary maintainer."""

  * http://hugunin.net/story_of_jython.html
  * https://en.wikipedia.org/wiki/Jython

  (At work a few years later, I was one of the team providing Java support in
  our object oriented database.  I felt that being able to run up Jython and
  code in Python was a good demonstration of our success.)

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

.. note::

  Some of those deserve a little more explanation:

  * ``#!/usr/bin/env python`` recommended, instead of
    ``#!/usr/local/bin/python`` - different systems may put Python in
    different places (I might even have installed it into my own home
    directories), so it's better to say "use the Python on the PATH" than to
    bind in an assumption of where Python lives. This is still the
    recommendation today. This is contentious with some people, who worry that
    it is a security hole to rely on the PATH being safe - if it matters, then
    indeed bind in the location of Python for the scripts that need to worry
    about this (i.e., system scripts).
  * ``-O`` produces ``.pyo`` files instead of ``.pyc`` files. This basically
    removes SET_LINENO instructions and assert statements
  * ``raise SomeClass, some_value`` where ``some_value`` is not an instance of
    ``SomeClass`` raises ``SomeClass(some_value)``.
  * The new, experimental ``re.py`` regular expression module was introduced,
    and then almost immediately replaced by an even newer one based on Philip
    Hazel's ``pcre``. The old ``regex`` module is officially obsolete, but
    still there.
  * Python builds as a single library file, libpython1.5.a
  * ``import spam.ham.eggs`` supported directly, ``ni`` declared obsolete, an
    ``__init__.py`` file is required to identify a directory as a package

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

.. note::

  Stackless Python

  * https://en.wikipedia.org/wiki/Stackless_Python
  * video: http://pyvideo.org/europython-2012/the-story-of-stackless-python.html
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

.. note::

  * Guido worked for Digital Creations for a while

  * wikipedia says:

    """"A Zope website is usually composed of objects in a Zope Object Database,
    not files on a file system, as is usual with most web servers. This allows
    users to harness the advantages of object technologies, such as
    encapsulation. Zope maps URLs to objects using the containment hierarchy of
    such objects; methods are considered to be contained in their objects as
    well. Data can be stored in other databases as well, or on the file system,
    but ZODB is the most common solution."""

  There is lots of information out there on Digital Creations, the Zope
  foundation and Zope itself. Some useful links may be:

  * https://en.wikipedia.org/wiki/Zope
  * https://blog.startifact.com/posts/my-exit-from-zope.html - Martijn Faassen's history of Zope and his involvement
  * https://blog.startifact.com/posts/the-weirdness-of-zope.html Oct 2013 - part of the above?
  * https://en.wikipedia.org/wiki/Zope_Object_Database
  * http://bluebream.zope.org/about/history.html - the history of BlueBream (Zope 3)
  * https://www.slideshare.net/regebro/zope-is-dead-long-live-zope - slides, Jun 2011
  * http://python-history.blogspot.co.uk/2009/01/personal-history-part-2-cnri-and-beyond.html (Guido worked there after CNRI)
  * http://reinout.vanrees.org/weblog/2011/06/07/zope.html - Who Cares About Zope (Martijn Faassen again)
  * https://en.wikipedia.org/wiki/Plone_(software)
  * http://www.troubleshooters.com/tpromag/199906/_digcreate.htm - Digital Creations open sourcing Zope

  StructuredText 4.1.0_ is available on PyPi, dating from 2014, and there is
  a `StructuredText github repository`_. To get a flavour of it, read the
  `Introduction to Structured Text`_. `StructuredTextNG`_ ("next generation")
  was intended to be a replacement. Back in the day, I wrote a document which
  tried to `define StructuredTextNG` more formally than its own documentaiton,
  as part of the work to work out a replacement.

  .. _4.1.0: https://pypi.python.org/pypi/zope.structuredtext
  .. _`StructuredText github repository`: https://github.com/zopefoundation/zope.structuredtext
  .. _`Introduction to Structured Text`: http://old.zope.org/Documentation/Articles/STX/
  .. _`StructuredTextNG`: http://old.zope.org/Members/jim/StructuredTextWiki/StructuredTextNG.1
  .. _`define StructuredTextNG`: http://tibsnjoan.co.uk/docutils/STNG-format.html

  The following links looked interesting, but last time I tried, appeared to
  be broken:

  * http://www.zope.org/the-world-of-zope/
  * http://specialtyjobmarkets.com/Wikis/LozinskiClasses/HistoryOfZopeIdeasAndControversies
  * http://plope.com/Members/chrism/in_defense_of_zope_libraries/talkback/1324502077 - cached by google at http://webcache.googleusercontent.com/search?q=cache:yCRd2QuwpxoJ:plope.com/Members/chrism/in_defense_of_zope_libraries+&cd=1&hl=en&ct=clnk&gl=uk&client=firefox-b-ab, as an explanation (sort of) of "why pyramid" ("""Pyramid is a small, fast, down-to-earth Python web application development framework. It is developed as part of the Pylons Project. It is licensed under a BSD-like license.""") https://trypyramid.com/


----

-18 |year| 1999
===============

* Python **1.5.2**

* Zen of Python

.. note::

  Why single out 1.5.2? Well, it was the last release before 1.6 and/or 2.0,
  and at the time it certainly felt like a significant thing. Indeed, I
  vaguely recall people having *serious discussions* about upgrading from 1.3
  to 1.5.2, and then again from 1.5.2 to 2.n.

  The Zen of Python was written, more or less as a throw-away, by Tim Peters
  in a post on comp.lang.python, 4 June 1999:

    https://mail.python.org/pipermail/python-list/1999-June/001951.html)

  The ``import this`` Easter Egg was introduced in 2001:

    https://www.wefearchange.org/2010/06/import-this-and-zen-of-python.html

  and it became a PEP in 2004:

    https://www.python.org/dev/peps/pep-0020
  

----

1999 Apr Python 1.5.2
----------------------

* docs separated out
* IDLE introduced
* bare ``raise`` re-raises
* ``quit`` and ``exit`` at the Python prompt tell you how to exit
* list ``pop`` method, experimentally
* new module ndiff

.. note::

  More details:

  * docs separated out into a separate distributable
  * IDLE introduced
  * bare ``raise`` re-raises
  * """Added a hack so that when you type 'quit' or 'exit' at the interpreter,
    you get a friendly explanation of how to press Ctrl-D (or Ctrl-Z) to
    exit."""
  * list ``pop`` method, experimentally
  * ``ndiff.py`` - Tim Peter's text diffing tool

  There's a lot of argument behing how quit and exit at the Python prompt
  behave! They can't just exit because the Python prompt doesn't treat things
  (much) more specially than Python itself, and they aren't function calls,
  they're just objects. So the compromise is to change their representation to
  give the information the user needs. But of course many people are still
  unhappy.


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

.. note::

  https://opensource.org/licenses/Python-2.0 - Python 2.0 license

  * reStructuredText: first drafts go to the DocSIG in November 2000, first
    release rolled out in June 2001

    * https://en.wikipedia.org/wiki/ReStructuredText - they refuse to use a
      lower-case letter at the beginning of page names. Oh well, we're not the
      only people to suffer.
    * http://tibsnjoan.co.uk/docutils.html - links to my attempt at more formal
      documentation for Zope's (planned) StructuredTextNG, my initial attempt at
      a replacement for it and StructuredTExt, and (more importantly) copies of
      David Goodger's original postings to the Doc-SIG, which led to Docutils
      and reStructuredText as we know them
    * http://docutils.sourceforge.net/ is the site for both docutils and
      reStructuredText (which is part of docutils)
    * http://docutils.sourceforge.net/docs/ref/rst/introduction.html#history is
      David Goodger's account of the history of reStructuredText - he write it,
      so he should know. I think he is quite restrained in his mention of the
      length of the discussions on the DocSIG.
    * http://docutils.sourceforge.net/docs/index.html is the documentation for the project
    * http://docutils.sourceforge.net/rst.html is the reference document
    * http://docutils.sourceforge.net/docs/user/rst/quickref.html is the *very useful* cheat sheet, what I wrote

    Note that Guido vetoed StructuredText or StructuredTextNG being accepted as
    "the" Python documentation format for various reasons, perhaps the most
    important being its ambiguity and its use of paragraph indentation to
    determine "levels".

       (For instance, all forms of StructuredText were unclear whether::

           In Spanish, the letter
           o is a word.

       contained a list or not, since ``o`` was allowed as a list delimiter,
       and there was no need to precede a list with a blank line.)

    He also insisted that any Python documentation system must allow him to
    use "<" and ">" without needing to use escapes - he wanted to be able to
    discuss XML easily, and presumably also to use the constructs like "<name>".

    David Goodger's solution solved all of those, and was clearly the way to go.

  * Alex Martelli coins "duck typing"

    * https://en.wikipedia.org/wiki/Duck_typing

    Alex Martelli made an early (2000) use of the term in a message_ to the comp.lang.python newsgroup:

      In other words, don't check whether it IS-a duck: check whether it
      QUACKS-like-a duck, WALKS-like-a duck, etc, etc, depending on exactly what
      subset of duck-like behaviour you need to play your language-games with.

    * Also see https://en.wikipedia.org/wiki/Duck_test


  * Perl 6. You might ask why this should be discussed here, but Python was,
    for many years, regularly contrasted with Perl, and the introduction of
    Perl 6 is an interesting contrast to what happened with Python 3.

      (Basically, Perl 6 is a new language broadly based on Perl 5, and whilst
      it is arguably a much better, and perhaps more interesting, language, it
      has never seemed to gain any traction - although many of its features
      have fed back into Perl 5. By contrast, Python 3 was much more modest
      in its changes, and has clearly been much more successful.)

    * https://en.wikipedia.org/wiki/Perl_6
    * https://en.wikibooks.org/wiki/Perl_6_Programming/Perl_History
    * http://www.perlfoundation.org/perl6/index.cgi?timeline
      (Parrot-VM begun in 2001, initial Perl 6 compiler for it in 2002,
      Pugs came along in 2005, compiler renamed Rakudo and massively rewritten
      in 2008)
    * http://www.perlfoundation.org/perl6/index.cgi?pugs - written in Haskell
    * https://www.reddit.com/r/programming/comments/cqysn/10_years_perl_6_project_history_and_personal/

.. _message: https://groups.google.com/forum/?hl=en#!msg/comp.lang.python/CCs2oJdyuzc/NYjla5HKMOIJ

----

2000 Sep Python 1.6, 1.6.1
---------------------------

* Python 1.6, the penultimate CNRI version
* Python 1.6.1, the same with a GPL compatible license

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

.. note::

  As stated in the notes for an earlier slide, the first release of
  reStructuredText was in June 2001.

  Python 2.1 introduced Tim Peters doctest:

  * https://docs.python.org/2/library/doctest.html
  * https://en.wikipedia.org/wiki/Doctest

  IPython started:

  * https://ipython.org/ipython-doc/1/about/history.html
  * https://en.wikipedia.org/wiki/IPython
  * http://www.numfocus.org/blog/nteract-building-on-top-of-jupyter-from-a-rich-repl-toolkit-to-interactive-notebooks
    starts with a brief history of IPython and Jupyter

  Numarry and Scipy are discussed in Travis E. Oliphant's slides at
  https://www.slideshare.net/shoheihido/sci-pyhistory, which
  gives dates for Matrix Object, Numeric, Numarray and NumPy (1994, 1995, 2001
  and 2005 respectively) on slide 9 

  He says they announced the intent to create (what became) SciPy in 1999

  * https://scipy.github.io/old-wiki/pages/History_of_SciPy
  * https://en.wikipedia.org/wiki/SciPy

  The Parrot April Fool joke (joint development of Perl 6 and Python on the same
  interpreter, producing a new language to be called Parrot) is at
  http://www.perl.com/pub/2001/04/01/parrot.htm, and the story behind it is
  told at http://archive.oreilly.com/pub/a/oreilly//news/parrotstory_0401.html

  Of course, this gave the name to the *actual* VM that was intended to run
  both Perl and Python (although not to provide a merged language).

  Plone (https://plone.org/) is described by wikipedia at
  https://en.wikipedia.org/wiki/Plone_(software):

    """Plone is a free and open source content management system built on top
    of the Zope application server. Plone is positioned as an "Enterprise CMS"
    and is most commonly used for intranets and as part of the web presence of
    large organizations."""

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

.. note::

  Slightly expanded:

  * PSF "owns" Python
  * Nested scopes (off by default)
  * ``__future__`` directives introduced
  * rich comparisons (``__lt__`` and friends)
  * weak references
  * Ka Ping Yee's inspect.py and pydoc.py
  * Tim Peter's doctest.py
  * PyUnit introduces unit testing with the unittest module, inspired by Java
  * modules can define ``__all__`` to control what is visible to ``from module import *``

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

.. note::

  Slightly expanded:

  * 2.2 license definitely GPL compatible
  * old- and new-style classes
  * descriptors
  * the diamond rule for multiple inheritance
  * ``__getattribute__`` and ``__slots__``
  * iterators and ``__iter__``
  * simple generators - ``from __future__ import generators`` and ``yield``
  * ``from __future__ import division`` and ``//``
  * nested scopes on by default
  * ``help()`` at the Python prompt
  * I think ``True`` and ``False`` appeared in Python 2.2.1

----

-15 |year| 2002
===============

* First EuroPython

* Docutils 1.0

* Pyrex announced by Greg Ewing

* timsort

* Pypi (aka The Cheese Shop) was launched

* Armin Rigo starts Psyco

.. note::

  * April: v0.4 of reStructuredText and the associated Document Processing
    System were merged and released as Docutils 0.1
    (from http://docutils.sourceforge.net/docs/ref/rst/introduction.html#history)

  * Also in April: Pyrex announced by Greg Ewing

  * Tim Peters and timsort

    * https://en.wikipedia.org/wiki/Timsort
    * there is an explanation of timsort in the CPython source code, in the file listsort.txt_
    * http://www.drmaciver.com/2010/01/understanding-timsort-1adaptive-mergesort/ David MacIver explains how to arrive at the core of timsort

  * Pyrex was the original package from which Cython would eventually diverge.
    
    (When Cython started, it was parly as a reaction to the slow pace of
    change of Pyrex, and partly with the intent of being more adventurous in
    what it would do):

    * http://www.cosc.canterbury.ac.nz/greg.ewing/python/Pyrex/
    * https://en.wikipedia.org/wiki/Pyrex_(programming_language)

  * Pypi on wikipedia: https://en.wikipedia.org/wiki/Python_Package_Index

  * Psyco was "a Python extension module which can greatly speed up the
    execution of any Python code", written by Armin Rigo. The project ran
    between 2002 and 2010. It was an important precursor to PyPy.

    * https://en.wikipedia.org/wiki/Pysco
    * http://psyco.sourceforge.net/

  .. _listsort.txt: https://github.com/python/cpython/blob/master/Objects/listsort.txt



----

-14 |year| 2003
===============

* Python **2.3**

* First PyCon in the USA (Washington DC)

* PyPy project starts

.. note::

  * PyPy started in 2003, and PyPy 1.0 was released in mid 2007

    * http://pypy.org/
    * http://pypy.org/people.html has some background on how it started and who was responsible
    * https://en.wikipedia.org/wiki/PyPy
    * Announcement of the first PyPy sprint, Oct 2003: http://code.activestate.com/lists/python-list/364702/
    * Talks and papers about PyPy http://doc.pypy.org/en/latest/extradoc.html
    * PyPy timeline: http://cfbolz.de/pypy-timeline/timeline.html

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

.. note::

  Parrot was a VM that was conceived to run Perl, Python and other languages
  in common. It started as a joke.

  * Parrot April Fool joke (joint development of Perl 6 and Python on the same
    interpreter, producing a new language to be called Parrot)
    http://www.perl.com/pub/2001/04/01/parrot.htm
  * https://github.com/parrot is the real project
  * https://en.wikipedia.org/wiki/Parrot_virtual_machine
 
  Dan Sugalski made a bet with Guido van Rossum that Parrot would
  be faster (at executing a pure python benchmark of some sort (to be
  determined)) with the challenge details announced at OSCON 2003 and the
  results tried at OSCON 2004. This didn't actually come to pass, and as a
  result, Dan Sugalski got a custard-pie in the face (actually, twice, the
  second time to raise money for charity).

  * http://grokbase.com/t/perl/perl6-internals/032391mt4t/the-2004-performance-challenge-is-on
  * http://archive.oreilly.com/pub/a/oscon2004/friday/index.html - 

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

.. note::

  The decimal module introduces the ``Decimal`` type

----

-12 |year| 2005
===============

* IronPython started

* Django released

* Numpy produced, by combining Numeric and Numarray

.. note::

  * IronPython:

    * https://ironpython-test.readthedocs.io/en/latest/license.html

      """IronPython was created in 2005 by Jim Hugunin to prove that the .NET
      Framework was a poor platform for dynamic languages. He failed to do so, and
      IronPython was born."""

    * https://ironpython-test.readthedocs.io/en/latest/contents.html
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

  * Numpy - we discussed this earlier

    * https://en.wikipedia.org/wiki/NumPy 

----

-11 |year| 2006
===============

* Python **2.5**

.. note::

  ...


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

.. note::

  Python 2.5 provided a lot of stuff, quite a lot of it significant.

  The ``with`` statement is arguably the most important, and it is certainly
  one of my favourite things about modern Python. In Python 2.5 it's still
  only experimental, but many people would be enabling it.

  The introduction of the "3 way if" clause finally settled one of the long
  standing debates about "things missing from Python", arguably in a way that
  made no-one particularly happy (so perhaps that serves them right!). In
  practise, I actually quite like it, and think if was a good solution to an
  impossible problem.

  Allowing ``try``, ``except`` and ``finally`` together closed a long-standing
  niggle in how to use Python - it was never very obvious why that didn't
  work.

  It's not entirely clear when ``class C():`` became illegal, but it may have
  been with Python 0.9.3, so that's quite a while back.

----

-10 |year| 2007
===============

* Cython officially launched

* PyPy 1.0

* First **PyConUK**

* First **CamPUG** meeting

.. note::

  * Cython was launched in July 2007, as a fork of Pyrex.

    * http://cython.org/
    * https://en.wikipedia.org/wiki/Cython

  * PyPy 1.0 ("the first release of PyPy") was in mid 2007

  * The first PyConUK was in September 2007 - see the next slide

  * The first CamPUG meeting was in October 2007, as a direct consequence

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

.. note::

  From 2002 to 2006, there were Python tracks at the annual ACCU conference. In
  2006, Guido van Rossum was a keynote speaker.

   * *ACCU Apr 2002*: Heritage Motor Centre, Gaydon "including the Python UK Conference"
   * *ACCU Apr 2003*
   * *ACCU Apr 2004*: Oxford, with a 2 day Python track
   * *ACCU Apr 2005*
   * *ACCU Apr 2006*: Oxford, 2 day Python track,  Guido van Rossum as keynote speaker

   I know I was at the first of those, because I remember the venue and
   specific items on the program. I'm fairly sure of the last, because of
   Guido being a keynote speaker. I *think* the middle one is the right year,
   I know I wasn't at 2003, and I don't think I got to 2005.

   ACCU is relatively cheap for a "professional" conference, but still quite
   expensive in real terms. This meant that many people (myself included)
   could only go for a couple of days.

   The low cost of PyConUK is undoubtedly a reaction to this, and the same
   sort of thinking has led to the conferences attitude to making itself
   inclusive and a friendly space.

   My boss and I gave talks at PyConUK 2010 - my first talk at a
   PyConUK. Quoting https://metaljoe.wordpress.com/2010/07/24/europython-2010/

     """To round off the day, I attended two talks by Richard Watts and Tony
     Ibbs of Kynesim who presented Muddle, their open source build system
     which looks very cool, and KBUS which is an elegant and lightweight
     messaging system implemented as a Linux kernel extension."""

   In the EuroPython years, people still wanted a "something" in the latter
   part of the year, hence:

   * **Python Unconference**: one day, September 2010, Birmingham
   * **Floss UK**: one day only, October 2010, Birmingham BMI
  
   (The FlossUK event was also an unconference - I requested an item on using
   Bacula, and in the way of such things ended up "running" it!)

   2014 was John Pinner's last PyConUK. He will be missed.

   At the first PyConUK, Zeth ran a session about starting up local Python
   User Groups, and made people go and form clusters by where they came from,
   and then promise to go home and start a group. Somehow, Cambridge ended up
   with two groups on opposite sides of the room, but we found each other
   before the first meeting, so all ended well.

----

-9 |year| 2008
==============

* Python **2.6**

* Python **3.0**

.. note::

  Moving from Python 2 to Python 3:

  * http://pybit.es/python-porting.html Best Practices for Compatible Python 2 and 3 Code, Mar 2017
  * http://sebastianraschka.com/Articles/2014_python_2_3_key_diff.html The key differences between Python 2.7.x and Python 3.x with examples, Jun 2014 
  * http://python-future.org/compatible_idioms.html Cheat Sheet: Writing Python 2-3 compatible code (last date 2016)
  * http://www.asmeurer.com/python3-presentation/slides.html#1 - 10 awesome
    features of Python that you can't use because you refuse to upgrade to
    Python 3 - goes up to about 3.5, Mar 2016


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

.. note::

  More details on some things:

  * documentation now in reStructuredText using Sphinx - see below
  * new issue tracker (Roundup)
  * ``-3`` command line switch, to warn about features that will be removed in Python 3.0
  * ``with`` statement now always enabled, ``with`` is a keyword, more things support context management
  * string formatting with ``.format``
  * ``from __future__ import print_function``
  * now must write ``except TypeError as exc``
  * ``from __future__ import unicode_literals``
  * abstract base classes
  * octal may be ``0o123`` as well as ``0123``
  * class decorators
  * ``next(iterator, [default])``
  * ``@property`` and its friends
  * new modules: ast, json, fractions, io, multiprocessing, abc

  Documentation was moved to reStrucutedText and Sphinx.
  
  As I remember it:

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

.. note::

  More details for some things

  * obviously, everything applicable from 2.6
  * strings are unicode, bytes are not strings
  * ``print`` is a function
  * ``0123`` is not valid, ``0o123`` is octal (and ``0b1010`` is binary)
  * some things return *views* instead of lists
  * ``1/2`` is 0.5, ``1//2`` is 0.
  * ``repr`` of a long int no longer has a trailing ``L``, because all ints are of the same type
  * function argument and return value annotations are introduced, but with no semantics
  * ``nonlocal``
  * extended iterable unpacking - e.g., ``a, *rest, b = range(5)``
  * dictionary comprehensions: ``{k: v for k, v in stuff}``
  * set literals: ``{1, 2}``
  * lots of library reorganisation
  * "unbound methods" as a concept has gone
  * more intelligent ``super``, doesn't normally need any arguments
  * ``input`` is now what was ``raw_input``
  * ``dict.has_key()`` has gone - just use ``in``
  * ``callable()`` has gone
  * lots of other stuff

----

-8 |year| 2009
==============

* Python **3.1**

* PEP 3003: Python Language Moratorium

* Announcement of proposed move to Mercurial

.. _`PEP 3003`: https://www.python.org/dev/peps/pep-3003/

.. note::

  * Proposed move to Mercurial:

    * https://www.python.org/dev/peps/pep-0385/
    * https://arstechnica.com/information-technology/2009/03/python-adopts-the-mercurial-version-control-system/

  * `PEP 3003`_

    """This PEP proposes a temporary moratorium (suspension) of all changes to
    the Python language syntax, semantics, and built-ins for a period of at
    least two years from the release of Python 3.1. In particular, the
    moratorium would include Python 3.2 (to be released 18-24 months after
    3.1) but allow Python 3.3 (assuming it is not released prematurely) to
    once again include language changes.

    This suspension of features is designed to allow non-CPython
    implementations to "catch up" to the core implementation of the language,
    help ease adoption of Python 3.x, and provide a more stable base for the
    community."""

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
  
.. note::

  * Apr 2010 last release of Pyrex (0.9.9)

  * Aug 2010 (?) Nuitka starts

  * Eric Holscher announce Read the Docs, using Sphinx to provide a public
    resource for generating and presenting documentation written in
    reStructuredText. For free.

    * http://ericholscher.com/blog/2010/aug/16/announcing-read-docs/

  * Nuitka:

    * http://nuitka.net/
    * https://docs.python.org/3/faq/design.html#can-python-be-compiled-to-machine-code-c-or-some-other-language

  * Python 2.7 will not be maintained past 2020 (https://pythonclock.org/)

----

2010 Jul Python 2.7
--------------------

2.7 will be supported until 2020 (originally, until 2010)

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

.. note::

  * http://eli.thegreenplace.net/2011/03/18/python-development-switches-to-mercurial-source-control/

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

.. note::

  * pyc repository directories - all .pyc files stored in a ``__pycache__``
    directory, named according to the Python version
  * ``hasattr`` now calls ``getattr`` and checks for an exception
  * ``callable`` went away in Python 3.0

----

-5 |year| 2012
==============

* Python **3.3**

.. note::

  ...

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

.. note::

  More details:

  * ``yield from``
  * ``u"unicode"`` is back, to be friendlier to ex-Python 2 code
  * new modules include: ipaddress, lzma, unittest.mock, venv (virtual environment support built-in)
  * packages don't necessarily require ``__init__.py``, and can span multiple locations
  * internally, string representation changes according to the string
  * new launcher mechanism for ``.py`` files on Windows
  * reorganised OS and IO exception hierarchy
  * ``__qualname__`` represents the full path from module to functions and classes - e.g., ``"Class.method"``
  * more work on import, new importlib
  * hash randomisation on by default
  * no more support for OS/2 or VMS

----

-4 |year| 2013
==============

The MicroPython kickstarter

.. note::

  Damien George ran a `Kickstarter campaign`_ to fund the writing of
  MicroPython, and development of an initial board to run it on. It was
  wildly successful. This was the first time someone had managed to make a
  Python to run on microcomputers, and it wasn't just a subset of Python,
  but basically the whole language - and Python 3 as well.

  .. _`Kickstarter campaign`: https://www.kickstarter.com/projects/214379695/micro-python-python-for-microcontrollers

  * https://en.wikipedia.org/wiki/MicroPython
  * http://micropython.org/
  * https://github.com/micropython/micropython/wiki/Differences - differences from CPython

----

-3 |year| 2014
==============

* Python **3.4**

* Jupyter announced

.. note::

  http://blog.jupyter.org/2015/04/15/the-big-split/ - the actual split into
  two projects

  """Project Jupyter is an open source project was born out of the IPython
  Project in 2014 as it evolved to support interactive data science and
  scientific computing across all programming languages""" - from
  http://jupyter.org/about.html


----

2014 Mar Python 3.4
--------------------

No new syntax features

* ``codecs.encode()`` and ``codesc.decode()`` improved
* unittest gains ``subTest()`` and ``assertLogs()``
* new modules: ensurepip, enum, pathlib
* asyncio module, with a provisional API
* new command line option ``-I``

.. note::

  More details:

  * ensurepip module provides simpler bootstrapping of pip
  * ``codecs.encode()`` and ``codesc.decode()`` (introduced in 2.4) now properly documented, and have been improved.
  * asyncio module, with a provisional API
  * enum module
  * pathlib module
  * unittest ``TestCase`` has new method ``subTest()``
  * unittest provides new context manager ``assertLogs()``
  * new command line option ``-I``, isolated mode - recommended for use when running system scripts.

----

-2 |year| 2015
==============

* Python **3.5**

.. note::

  ...

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

.. note::

  * coroutines with ``async`` and ``await``
  * ``@`` infix operator for matrix multiplication, supported by NumPy 1.10
  * more unpacking generalisations - e.g., ``[*range(4), 4]`` is ``[0, 1, 2, 3, 4]`` (and it works for ``**`` for dictionaries as well)
  * bytes and bytearray support ``%`` formatting
  * typing module is provisional support for type hints, aimed (for instance) at mypy
  * os.scandir - a better and faster directory iterator
  * ``math.isclose()`` - approximate equality
  * ``.pyo`` files have gone (optimised files have a slightly different name, but the same extension)


----

-1 |year| 2016
==============

* Python **3.6**

* Linux kernel documentation now in reStructuredText, using Sphinx

.. note::

  * https://lwn.net/Articles/692704/ Kernel documentation with Sphinx, part 1: how we got here, Jul 2016
  * https://lwn.net/Articles/692705/ Kernel documentation with Sphinx, part 2: how it works, Jul 2016
  * https://lwn.net/Articles/704613/ A Report from the documentation maintainer, Oct 2016
  * https://lwn.net/Articles/705224/ Kernel Documentation update, Nov 2016

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

.. note::

  * formatted string literals: ``f"This module is called {__name__}."``
  * syntax for variable (type) annotations
  * underscores allowed (ignored) in numeric literals: ``123_111_112``, ``0b_1100_0011``.
  * asynchronous generators ``await``
  * asynchronous comprehensions ``result = [i async for i in aiter() if i % 2]``
  * ``__init_subclass__`` classmethod will be called on the base class when a new subclass is created - allows customisiing subclass creation without a metaclass
  * ``os.PathLike`` and the ``__fspath()__`` "magic" method for file system paths and their ilk
  * local time disambiguation - support in datetime for when local clocks move back, the new ``fold`` attribute
  * Windows filesystem encoding is now UTF-8
  * class attribute definition order is preserved, as is keyword argument order. This brings with it a change in dictionary implementation - key order is now preserved (first tried out in PyPy, and dictionaries are smaller).  This is, however, an implementation detail - the order of dictionary keys is still not defined (although this *might* change in the future)
  * secrets module - obvious way to reliably generate cryptographically strong pseudo-random values suitable for managing secrets
  * asyncio module is no longer provisional
  * typing module is still provisional
  * use of ``async`` and ``await`` as variable, class, function or module names will generate a DeprecationWarning. They will become keywords in 3.7

----

0 |year| 2017
=============

CPython source moved to github

.. note::

  In February, Python (CPython) moved to github

  * https://www.infoq.com/news/2016/01/python-moving-to-github
  * https://snarky.ca/the-history-behind-the-decision-to-move-python-to-github/
  * https://www.python.org/dev/peps/pep-0512/ - Migrating from hg.python.org to GitHub
  * https://mail.python.org/pipermail/python-dev/2017-February/147341.html


----

+1 |year| 2018
==============

Python **3.7** is currently expected to be released in June 2018

.. note::

  https://www.python.org/dev/peps/pep-0537/


----

Fin
===

*That's all folks*

  Written using reStructuredText_.

  Presented using hovercraft_.

  Sources at https://github.com/tibs/python-history 

.. note::

  Other stuff, not used in the talk:

  * Humour

    * https://www.python.org/doc/humor/
    * https://wiki.python.org/moin/Humor
    * https://xkcd.com/353/

  * Some of the Python easter eggs:

    * ``import this``
    * ``import antigravity``
    * ``from __future__ import braces``
    * ``from __future__ import barry_as_FLUFL``

  * Frank Willison Memorial Award https://www.python.org/community/awards/frank-willison/

     * Brett Cannon (2016)
     * Jessica McKellar (2015)
     * Barry Warsaw (2014)
     * Anna Martelli Ravenscroft (2013)
     * Jesse Noller (2012)
     * Georg Brandl (2011)
     * Christian Tismer (2010)
     * Mark Hammond (2009)
     * Martin von Löwis (2008)
     * Steve Holden (2007)
     * Alex Martelli (2006)
     * Cameron Laird (2004)
     * Fredrik Lundh (2003)
     * Andrew Kuchling (2002)

.. vim: set filetype=rst tabstop=8 softtabstop=2 shiftwidth=2 expandtab:
