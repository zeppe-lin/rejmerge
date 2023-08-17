OVERVIEW
--------
This directory contains rejmerge, a package management utility that
helps to merge files that were rejected during package upgrades.

This rejmerge distribution is a fork of CRUX' rejmerge utility (which
is part of CRUX' pkgutils distribution) as of commit 9ca0da6 (Sat Nov
17 2018) with the following differences:
- rewritten in POSIX sh(1p)
- man page have been rewritten in POD format
- man page have been split in 2 man pages: rejmerge(8) and rejmerge.conf(5)
- added GNU-style options and help message
- added `-c/--config` option to specify an alternative configuration file
- added `-n/--dry-run` option to print the differences between an installed
  version and rejected one, but do not execute any actions
- added bash completion
- source code have been documented

See git log for complete/further differences.

The original sources can be downloaded from:
1. git://crux.nu/tools/pkgutils.git                        (git)
2. https://crux.nu/gitweb/?p=tools/pkgutils.git;a=summary  (web)


REQUIREMENTS
------------
**Build time**:
- POSIX sh(1p) and "mandatory utilities"
- GNU make(1)
- pod2man(1pm) to build man pages

**Runtime**:
- POSIX sh(1p) and "mandatory utilities"
- POSIX vi(1) and more(1) (can be redefined)
- GNU coreutils (look at f27f59a for suckless sbase support)
- GNU diff from diffutils package
- GNU getopt from util-linux package
- mktemp(1)

INSTALL
-------
The shell commands `make && make install` should build and install
this package.


LICENSE
-------
rejmerge is licensed through the GNU General Public License v2 or
later <https://gnu.org/licenses/gpl.html>.
Read the COPYING file for copying conditions.
Read the COPYRIGHT file for copyright notices.
