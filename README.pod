rejmerge - merge files that were rejected during package upgrades
=================================================================
rejmerge is a package management utility that helps you to merge files
that were rejected during package upgrades.

This rejmerge distribution is a fork of CRUX' rejmerge utility (which
is part of CRUX' pkgutils distribution) as of commit 9ca0da6 (Sat Nov
17 2018).  It was rewritten in POSIX sh(1p) and added support of the
suckless' sbase utilities.  The man page have been rewritten in POD
(Plain Old Documentation) and split into two man pages: rejmerge(8)
and rejmerge.conf(5).  Bash completion and COPYRIGHT files have also
been added..

The original sources can be downloaded from:

  1.
    git clone git://crux.nu/tools/pkgutils.git
    git checkout 9ca0da6
  2. https://crux.nu/gitweb/?p=tools/pkgutils.git;a=summary


Dependencies
------------
Build time:
- POSIX' make(1p) and utilities like mkdir(1p), cp(1p), chmod(1p),
  rm(1p)
- podchecker(1pm) and pod2man(1pm) from perl distribution

Runtime:
- sh(1p)
- suckless' sbase or coreutils
- diffutils
- POSIX utilities


Install
-------
The shell commands `make; make install` should build and install this
package.  See `Makefile` for configuration parameters.


License and Copyright
---------------------
rejmerge is licensed through the GNU General Public License v2 or
later <https://gnu.org/licenses/gpl.html>.
Read the COPYING file for copying conditions.
Read the COPYRIGHT file for copyright notices.


<!-- vim:ft=markdown:sw=2:ts=2:sts=2:et:cc=72:tw=70
End of file. -->
