=======
mldl
=======

----------------------------------------------
creates a link to submit to MLdonkey with curl
----------------------------------------------

:Author: Zhihao Yuan <lichray@gmail.com>
:Date:   2011-04-02
:Copyright: 2-clause BSD License
:Version: 0.1
:Manual section: 1

SYNOPSIS
=========

``mldl`` [`OPTION`]... `URI`

``mldl`` [`OPTION`]... ``-f`` `FILE`\|-

DESCRIPTION
============
``mldl`` creates a MLdonkey HTTP request from `URI`, which is a ed2k, sig2dat, torrent or other link, and submits the download job. Multiple links can be stored in a `FILE` (or standard input if file name ``-`` is given), one link per line, and submitted with a ``-f`` option. 

OPTIONS
========

``-h`` `HOST`\[:`PORT`]  MLdonkey host. Defaults to localhost:4080.

``-u`` `USER`\[:`PASS`]  Set server user and password. The default user name is "admin". This option will be passed to ``curl``.

``-n``  Read .netrc for user name and password. This option will disable the ``-u`` option. If no record is found for the host, it will just disable the authentication. 

``-f`` `FILE`\|-  Download all the links in the file/stdin. Duplicated lines will be filtered. 

``-q``  Quiet mode. By default, ``mldl`` dumps the HTML response of MLdonkey into text. This option disables the feedback.

``-h``  Show help text.

EXAMPLES
=========
Download one link. ``curl`` will prompt for the password:

 ::

  mldl http://some/legal.torrent

Dowload all ed2k links within a web page. Use .netrc:

 ::

  curl -s 'http://some/legal/site.html' \
	  | grep -o 'ed2k://|file|.*|/' \
	  | mldl -f - -n

`wget -O-` can be used to replace the curl command.

SEE ALSO
=========
curl(1), wget(1)

