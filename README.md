OVERVIEW
--------
This directory contains rejmerge, a package management utility that helps to
merge files that were rejected during package upgrades.

This rejmerge distribution is a fork of CRUX' rejmerge utility (which is part
of CRUX' pkgutils distribution) as of commit 9ca0da6 (Sat Nov 17 2018) with the
following differences:
- rewritten in POSIX sh(1p)
- added support of suckless' sbase utilities
- man page have been rewritten in POD format
- man page have been split in 2 (two) man pages: rejmerge(8) and
  rejmerge.conf(5)
- added GNU-style options and help message
- added bash completion

See git log for complete/further differences.

The original sources can be downloaded from:
1. git://crux.nu/tools/pkgutils.git                        (git)
2. https://crux.nu/gitweb/?p=tools/pkgutils.git;a=summary  (web)


REQUIREMENTS
------------
**Build time**:
- POSIX sh(1p), make(1p) and "mandatory utilities"
- pod2man(1pm) to build man pages

**Runtime**:
- POSIX sh(1p) and "mandatory utilities"
- sbase or coreutils
- GNU diffutils


INSTALL
-------
The shell commands `make && make install` should build and install this
package.


LICENSE
-------
rejmerge is licensed through the GNU General Public License v2 or later
<https://gnu.org/licenses/gpl.html>.
Read the COPYING file for copying conditions.
Read the COPYRIGHT file for copyright notices.
