An amble through the history of Python
======================================

A slideshow produced for the `April 2017 meeting`_ of CamPUG_.

.. _`April 2017 meeting`: https://www.meetup.com/CamPUG/events/233934907/
.. _CamPUG: https://www.meetup.com/CamPUG/

and re-used at `PyCon UK 2017`_

.. _`PyCon UK 2017`: http://2017.pyconuk.org/

This was an experiment on "how many slides *would* it take to give a talk on the history of Python?".
Clearly the answer is "too many", which means that this talk is given from the start until time runs
out, which appears to work quite well as the earlier parts of the story are most likely to be those
the audience is unfamiliar with.

The slides with notes are in `<python-history.rst>`_.

If you're at a presentation of this talk, but can't see the screen at the
front very well, then the "bare" slides in `<just-the-slides.rst>`_ may be
more useful.

For convenience, you can use the Makefile to show the presentation, create the
HTML version of the talk, and so on. For instance::

  $ make show

will present the slideshow on ``https://localhost:8000``.

For what the Makefile can do, use::

  $ make help

Requirements:

* hovercraft
* Python 3 (of whatever version hovercraft wants)

and an appropriate ``make`` if you want to use the Makefile.

The slideshow and all associated matters are released under a CC0_ `1.0
Universal`_ "No Rights Reserved" Creative Commons license:

  To the extent possible under law, Tibs/Tony Ibbs has waived all copyright
  and related or neighboring rights to "An amble through the history of Python".
  This work is published from the United Kingdom.

.. _CC0: https://creativecommons.org/share-your-work/public-domain/cc0/
.. _`1.0 Universal`: https://creativecommons.org/publicdomain/zero/1.0/legalcode

.. vim: set filetype=rst tabstop=8 softtabstop=2 shiftwidth=2 expandtab:
