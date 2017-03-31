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

  ...



----

1994
====

* Jan **1.0**

* Oct 1994 **1.1**
  
* comp.lang.python starts up

.. note::

  ...



----

1995
====

* Apr (probably) **1.2**

  - docstrings

* Aug development of Grail started

* Oct (probably) **1.3**

  - the "ni" module

.. note::

  ...



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

.. _`Starship Python`_: http://starship.python.net/

.. note::

  ...
  * see http://pyfound.blogspot.co.uk/2010/07/frank-willison-memorial-award-recipient.html
    which confirms the date when Starship Python started, and of course also
    explains why Christian Tismer got the award


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

.. note::

  Why single out 1.5.2? Well, it was the last release before 1.6 and/or 2.0,
  and at the time it certainly felt like a significant thing. Indeed, I
  vaguely recall people having *serious discussions* about upgrading from 1.3
  to 1.5.2, and then again from 1.5.2 to 2.n.


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

  ...

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

* Dec **2.2**

  - license now definitely GPL compatible

.. note::

  ...



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

.. note::

  ...



----

2003
====

* Jul  **2.3**

* First PyCon in the USA

* PyPy project starts (see http://pypy.org/people.html)

.. note::

  ...



----

2004
====

* "Pie-thon" challenge - can Parrot run Python faster than Python itself?

* Nov **2.4**

.. note::

  ...



----

2005
====

.. note::

  ...




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

  ...



----

2008
====

* Oct **2.6**

  - documentation now in reStructuredText, using Sphinx
  - new issue tracker, Roundup

* Dec **3.0**

.. note::

  ...



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

.. note::

  ...



----

2011
====

* Feb **3.2**

  - mercurial repository for Python, as well as subversion

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

.. note::

  ...




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

.. note::

  ...



----

2017
====

* Feb CPython source moves to github

.. note::

  ...


----

2018
====

- **3.7** expected to be released in Jun 2018

  https://www.python.org/dev/peps/pep-0537/

.. note::

  ...



----



.. vim: set filetype=rst tabstop=8 softtabstop=2 shiftwidth=2 expandtab:
