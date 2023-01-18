ABOUT
-----
This directory contains _rejmerge_, a package management utility
that helps to merge files that were rejected during package upgrades.

This _rejmerge_ distribution is a fork of CRUX' _rejmerge_ utility
(which is part of CRUX' _pkgutils_ distribution) as of commit 9ca0da6
(Sat Nov 17 2018) with the following differences:

  * rewritten in POSIX sh(1p)
  * added support of suckless' sbase utilities
  * man page have been rewritten in POD format
  * man page have been split in two man pages:
    rejmerge(8) and rejmerge.conf(5)
  * added GNU-style options and help message
  * added bash completion

See git log for further differences.

The original sources can be downloaded from:
  1. git://crux.nu/tools/pkgutils.git                         (git)
  2. https://crux.nu/gitweb/?p=tools/pkgutils.git;a=summary   (web)

REQUIREMENTS
------------
Build time:
  * POSIX sh(1p), make(1p) and "mandatory utilities"
  * pod2man(1pm) to build man pages

Runtime:
  * POSIX sh(1p) and "mandatory utilities"
  * sbase or coreutils
  * GNU diffutils

Tests:
  * podchecker(1pm) to check PODs for errors
  * curl(1) to check URLs for response code

INSTALL
-------
The shell commands `make && make install` should build and install
this package.

The shell command `make check` should start some tests.

LICENSE
-------
_rejmerge_ is licensed through the GNU General Public License v2 or
later <https://gnu.org/licenses/gpl.html>.
Read the _COPYING_ file for copying conditions.
Read the _COPYRIGHT_ file for copyright notices.

<!-- vim:sw=2:ts=2:sts=2:et:cc=72:tw=70
End of file. -->
