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

Why me
======

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

About this talk
===============

I cover, at least briefly, the major releases of Python (and 1.5.2), and also
things that were happening in the Python world around those times.

1991 to 2018 - that's 27 years...

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

Before 1994: Feb 1991 Release 0.9.1p1
-------------------------------------


  - no ``__init__`` method
  - no double quote strings
  - adds ``else`` for for loops

----

Before 1994: 1991 Release 0.9.2
-------------------------------

*Never properly released*

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

Before 1994: 1991 Release 0.9.3
-------------------------------

*Again, probably not very released*

  - ``global`` statement
  - ``class B`` allowed, instead of ``class B()``, and can do ``class B(D)``
  - C shifting and masking operators (``<<``, etc)
  - C comparison operators  (``==`` and ``!=``) - the previous ``=`` and
    ``<>`` are still allowed
  - class attributes are no long read-only

----

Before 1994: Dec 1991 Release 0.9.4alpha
----------------------------------------

  - new exceptions
  - functions are called with 0..N arguments, not just 0 or 1. So:
    ``def init(self, (x, y))`` becomes ``def init(self, x, y)``
  - ``x[-1]`` is equivalent to ``x[len(x)-1]``

----

Before 1994 Release 0.9.8
-------------------------

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

* Oct 1994 **1.1**
  
* comp.lang.python starts up

.. note::

  * the Usenet days - back when you could read all of comp.lang.python every day

----

1994 Jan Release 1.0
--------------------

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

1994 Oct Release 1.1
--------------------

  - ``__getattr__`` and friends introduced
  - ``__call__``
  - threads should work on most platforms
  - tkinter
  - signal, curses, urlparse


----

Some comp.lang.python memes
===========================

* BDFL
* Guido - release a new version and go on holiday
* PSA and PSU (who definitely don't exist)
* Guido's time machine
* Python the role playing game
* timbot, effbot, martellibot

.. note::

  * PSU: Python Sectret Underground (who do not exist), a joke on the PSA
    (Python Software Association / Python Software Activity)

  * Particular items

    * Origin of BDFL (Benevolent Dictator for Life) from 1995: http://www.artima.com/weblogs/viewpost.jsp?thread=235725
    * 2001-02 Python the RPG https://mail.python.org/pipermail/python-list/2001-February/063576.html
    * 2001-01 PSU conspiracy revealed https://groups.google.com/forum/#!search/The$20PSU$27s$20Existence$20Revealed$20comp.lang.python/comp.lang.python/AFqy7ItagYM/XxW95wMEpEoJ
    * 2003-03 https://groups.google.com/forum/#!search/The$20PSU$27s$20Existence$20Revealed$20comp.lang.python/comp.lang.python/st0yPgpr-aU/wXTiFFAugNEJ
    * 2001-01 Notice: State of the PSU https://groups.google.com/forum/#!search/Status$20of$20the$20PSU$20comp.lang.python/comp.lang.python/7UAoH95mUpw/rrTUUXz-SmYJ
    * 2000-01 Time machine/Roswell https://groups.google.com/forum/#!msg/comp.lang.python/7qszKYUqqwI/goDCgE78U_EJ
    * 2003-03 PSU Elections https://groups.google.com/forum/#!search/Status$20of$20the$20PSU$20comp.lang.python/comp.lang.python/G293F7R5_Y4/PzrfgpXGA5EJ

  * Tim Peters (timsort, doctest, floating point guru), Fredrik Lundh (PIL:
    Python Imaging Library, ElementTree, tkinter), Alex Martelli (Python in a
    Nutshell, Python Cookbook)

    * https://www.youtube.com/watch?v=1wAOy88WxmY Interview with Tim Peters, PyCon 2006: Chatting with Tim Peters on PyPy, Python and other stuff
    * http://effbot.org/
    * https://en.wikipedia.org/wiki/Alex_Martelli


----

Replace this slide with one or more talking about specific things...
--------------------------------------------------------------------

Heh, didn't you mean to replace this slide?

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

1995 Apr Release 1.2
--------------------

*(actual release date unsure)*

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

1995 Oct Release 1.3
--------------------

*(actual release date unsure)*

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

1996 Oct Release 1.4
--------------------

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

1997 Dec Release 1.5
--------------------

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

Zope released as free software

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
====

Zope was the killer Python app that never quite became so. But it's important
in various ways:

* it's the origin of structuredText, the predecessor to reStructuredText
* it was (one of?) the first companies to open source its product as a result
  of commercial advice
* it was an early non-relational database (ZODB persists Python objects)
* the Zope web interface is to Python objects - wikipedia says:

  """"A Zope website is usually composed of objects in a Zope Object Database,
  not files on a file system, as is usual with most web servers. This allows
  users to harness the advantages of object technologies, such as
  encapsulation. Zope maps URLs to objects using the containment hierarchy of
  such objects; methods are considered to be contained in their objects as
  well. Data can be stored in other databases as well, or on the file system,
  but ZODB is the most common solution."""

* it's still around - Pylons, Zope 2, Blue Bream (aka Zope 3)

.. note::

  * Guido worked there for a while
  * An early (the first?) company to take its main product open source for
    financial reasons
  * Zope itself - the killer Python app that never quite was
  * ZODB
  * structuredText
  * structuredText and documenting types of arguments


  - https://en.wikipedia.org/wiki/Zope
  - https://blog.startifact.com/posts/my-exit-from-zope.html - Martijn Faassen's
    history of Zope and his involvement
  - https://blog.startifact.com/posts/the-weirdness-of-zope.html Oct 2013 - part
    of the above?
  - https://en.wikipedia.org/wiki/Zope_Object_Database
  - http://bluebream.zope.org/about/history.html - the history of BlueBream
    (Zope 3)
  - https://www.slideshare.net/regebro/zope-is-dead-long-live-zope - slides, Jun
    2011
  - http://python-history.blogspot.co.uk/2009/01/personal-history-part-2-cnri-and-beyond.html
    (Guido worked there for a bit)
  - http://reinout.vanrees.org/weblog/2011/06/07/zope.html - Who Cares About
    Zope (Martijn Faassen again)
  - https://en.wikipedia.org/wiki/Plone_(software)
  - http://www.troubleshooters.com/tpromag/199906/_digcreate.htm - Digital
    Creations open sourcing Zope
  - https://books.google.co.uk/books?id=W2t2d2KP6HsC&pg=PA137&lpg=PA137&dq=digital+creations+zope+open+source&source=bl&ots=ivXrBjiBY9&sig=F6XV5TpkHGMVCErglRAy5Q9Vz3E&hl=en&sa=X&ved=0ahUKEwiNm4Wi6enSAhUKK8AKHdJyBAAQ6AEISzAI#v=onepage&q=digital%20creations%20zope%20open%20source&f=false - ditto

  structuredText and so on:

  - https://www.python.org/community/sigs/current/doc-sig/stext/
  - http://www.tibsnjoan.co.uk/docutils/STpy.html - me(!) attempting to define
    structuredText
  - https://moinmo.in/StructuredText
  - http://fawcett.blogspot.co.uk/2005/06/tearing-down-markup.html Jun 2005
  - https://pypi.python.org/pypi/zope.structuredtext - it's alive!
  - https://github.com/zopefoundation/zope.structuredtext (ish)
  - http://old.zope.org/Documentation/Articles/STX/ - An introduction to
    Structured Text

  Broken links?

  * http://www.zope.org/the-world-of-zope/
  * http://specialtyjobmarkets.com/Wikis/LozinskiClasses/HistoryOfZopeIdeasAndControversies
  * http://plope.com/Members/chrism/in_defense_of_zope_libraries/talkback/1324502077 - cached by google at http://webcache.googleusercontent.com/search?q=cache:yCRd2QuwpxoJ:plope.com/Members/chrism/in_defense_of_zope_libraries+&cd=1&hl=en&ct=clnk&gl=uk&client=firefox-b-ab, as an explanation (sort of) of "why pyramid" ("""Pyramid is a small, fast, down-to-earth Python web application development framework. It is developed as part of the Pylons Project. It is licensed under a BSD-like license.""") https://trypyramid.com/


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

1999 Apr Release 1.5.2
----------------------

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

  reStructuredText:

  * https://en.wikipedia.org/wiki/ReStructuredText
  * http://tibsnjoan.co.uk/docutils.html - links to my attempt at more formal
    documentation for StructuredTextNG, my initial attempt at a replacement,
    and copies of David Goodger's original postings to the Doc-SIG, which led
    to Docutils and reStructuredText as we know them
  * http://docutils.sourceforge.net/
  * http://docutils.sourceforge.net/docs/index.html
  * http://docutils.sourceforge.net/rst.html - the reference document
  * http://docutils.sourceforge.net/docs/user/rst/quickref.html - my cheat sheet


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

2000 Sep Release 1.6, 1.6.1
---------------------------

* 1.6 penultimate CNRI version
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

2000 Oct Release 2.0
--------------------

First non-CNRI version

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
  and the story behind it is told at http://archive.oreilly.com/pub/a/oreilly//news/parrotstory_0401.html

* Dec **2.2**

  - license now definitely GPL compatible

Plone released

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

  * https://en.wikipedia.org/wiki/Plone_(software)
    """Plone is a free and open source content management system built on top
    of the Zope application server. Plone is positioned as an "Enterprise CMS"
    and is most commonly used for intranets and as part of the web presence of
    large organizations."""

----

2001 Apr Release 2.1
--------------------

License now "Python Software Foundation License"

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

2001 Dec Release 2.2
--------------------

...and then in Oct 2002, Release 2.2.2

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
  * there is an explanation of timsort in the CPython source code, in the
    file listsort.txt_
  * http://www.drmaciver.com/2010/01/understanding-timsort-1adaptive-mergesort/ David MacIver explains how to arrive at the core of timsort

  .. _listsort.txt: https://github.com/python/cpython/blob/master/Objects/listsort.txt

* Pypi (aka The Cheese Shop) was launched

.. note::

  * http://www.cosc.canterbury.ac.nz/greg.ewing/python/Pyrex/
  * https://en.wikipedia.org/wiki/Pyrex_(programming_language)

  * https://en.wikipedia.org/wiki/Python_Package_Index



----

2003
====

* Jul  **2.3**

* First PyCon in the USA (Washington DC)

* PyPy project starts (see http://pypy.org/people.html)

.. note::

  * http://pypy.org/
  * https://en.wikipedia.org/wiki/PyPy#RPython

  * Announcement of first PyPy sprint, Oct 2003 http://code.activestate.com/lists/python-list/364702/
  * Talks and papers about PyPy http://doc.pypy.org/en/latest/extradoc.html
  * PyPy timeline http://cfbolz.de/pypy-timeline/timeline.html

----

2003 2.3 Release 2.3
--------------------

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

2004 Nov Release 2.4
--------------------

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

Numpy produced, by combining Numeric and Numarray

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

2006 Sep Release 2.5
--------------------

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

   ACCU is/was relatively expensive, so I'd only go for the a couple of days.

   I got partially funded for 2002.

   ACCU Apr 2002:

   * https://mail.python.org/pipermail/python-uk/2002-February/000167.html
   * https://mail.python.org/pipermail/python-uk/2002-February/000168.html
   * http://www.gossamer-threads.com/lists/python/python/94742#94742

   There were also some smaller events:

   * **Python Unconference**: one day, September 2010, Birmingham
   * **Floss UK**: one day only, October 2010, Birmingham BMI

   on years when a "proper" PythonUK didn't happen


   I got funded in 2010, and my boss and I gave talks - my first talk at a
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

2008 Oct Release 2.6
--------------------

Preparing the migration path to Python 3. Development cycle for Python 2.6 and
3.0 was synchronised. Some of the new stuff in 3.0 is also in 2.6.

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

2008 Dec Release 3.0
--------------------

So much stuff. So this is only a sample

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

PEP 3003 - Python Language Moratorium

Proposed move to using Mercurial announced

.. note::

  * https://www.python.org/dev/peps/pep-0385/
  * https://arstechnica.com/information-technology/2009/03/python-adopts-the-mercurial-version-control-system/

  * https://www.python.org/dev/peps/pep-3003/

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

2009 Jun Release 3.1
--------------------

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

2010 Jul Release 2.7
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

2011
====

* Feb **3.2**

* Python actually starts using Mercurial

* IPython Notebook added to IPython

.. note::

  * http://eli.thegreenplace.net/2011/03/18/python-development-switches-to-mercurial-source-control/


----

2011 Feb Release 3.2
--------------------

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

2012 Sep Release 3.3
--------------------

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

Oh, except the MicroPython kickstarter, of course.

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

2014 Mar Release 3.4
--------------------

No new syntax features

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

2015 Sep Release 3.5
--------------------

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

Linux kernel documentation now in reStructuredText, using Spinx

.. note::

  * https://lwn.net/Articles/692704/ Kernel documentation with Sphinx, part 1: how we got here, Jul 2016
  * https://lwn.net/Articles/692705/ Kernel documentation with Sphinx, part 2: how it works, Jul 2016
  * https://lwn.net/Articles/704613/ A Report from the documentation maintainer, Oct 2016
  * https://lwn.net/Articles/705224/ Kernel Documentation update, Nov 2016

----

2016 Dec Release 3.6
--------------------

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

**3.7** expected to be released in Jun 2018

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
