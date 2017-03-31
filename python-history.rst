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

1994
====

* Jan **1.0**

* Oct 1994 **1.1**
  
* comp.lang.python starts up

.. note::

  * the Usenet days - back when you could read all of comp.lang.python every day

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

* Oct (probably) **1.3**

  - the "ni" module

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



----

1996
====

* Oct **1.4**

.. note::

  ...



----

1997
====

* Dec **1.5**

  - "re" module introduced

* Christian Tismer starts up the `Starship Python`_

* JPython started (which became Jython in 2000)

.. _`Starship Python`_: http://starship.python.net/

.. note::

  Christian Tismer:

  * see http://pyfound.blogspot.co.uk/2010/07/frank-willison-memorial-award-recipient.html
    which confirms the date when Starship Python started, and of course also
    explains why Christian Tismer got the award

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

1998
====

.. note::

  ...




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

2000
====

* Sep **1.6** penultimate CNRI version

* **1.6.1** same with a GPL compatible license

* Oct **2.0** first non-CNRI version, modern Python license

  - development now on sourceforge, opened up
  - PEPs

* Nov, reStructuredText (first drafts to DocSIG, June 2001 first release rolled out)

.. note::

  https://en.wikipedia.org/wiki/ReStructuredText

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


* Dec **2.2**

  - license now definitely GPL compatible

.. note::

  * https://ipython.org/ipython-doc/1/about/history.html
  * https://en.wikipedia.org/wiki/IPython
  * Useful link that also does a brief history of IPython and Jupyter (and how to use nteract):

    http://www.numfocus.org/blog/nteract-building-on-top-of-jupyter-from-a-rich-repl-toolkit-to-interactive-notebooks



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

.. note::

  * http://www.cosc.canterbury.ac.nz/greg.ewing/python/Pyrex/
  * https://en.wikipedia.org/wiki/Pyrex_(programming_language)



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

2005
====

IronPython started

.. note::

  * https://ironpython-test.readthedocs.io/en/latest/contents.html
  * https://ironpython-test.readthedocs.io/en/latest/license.html

    """IronPython was created in 2005 by Jim Hugunin to prove that the .NET
    Framework was a poor platform for dynamic languages. He failed to do so, and
    IronPython was born."""

  * http://ironpython.net/
  * https://en.wikipedia.org/wiki/IronPython




----

2006
====

* Sep **2.5**

.. note::

  ...



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

2009
====

* Jun **3.1**

.. note::

  ...



----

2010
====

* Jul **2.7** Will be supported until 2020 (originally, until 2010)

*Apr2010 last release of Pyrex (0.9.9)

*Aug 2010 (?) Nuitka starts

Eric Holscher announce Read the Docs, using Sphinx to provide a public
resource for generating and presenting documentation written in
reStructuredText. For free.

.. note::

  http://ericholscher.com/blog/2010/aug/16/announcing-read-docs/

  * http://nuitka.net/
  * https://docs.python.org/3/faq/design.html#can-python-be-compiled-to-machine-code-c-or-some-other-language

  Python 2.7 will not be maintained past 2020 (https://pythonclock.org/)

----

2011
====

* Feb **3.2**

  - mercurial repository for Python, as well as subversion

* IPython Notebook added to IPython

.. note::

  ...



----

2012
====

* Sep **3.3**

.. note::

  ...



----

2013
====

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

2015
====

* Sep **3.5**

.. note::

  ...




----

2016
====

* Dec **3.6**

Linux kernel documentation now in reStructuredText:
https://lwn.net/Articles/705224/

.. note::

  ...



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



.. vim: set filetype=rst tabstop=8 softtabstop=2 shiftwidth=2 expandtab:
