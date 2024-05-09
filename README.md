OVERVIEW
========

This directory contains rejmerge, a package management utility that helps to
merge files that were rejected during package upgrades.

This rejmerge distribution is a fork of CRUX' rejmerge utility (which is part
of CRUX' pkgutils distribution) as of commit 9ca0da6 (Sat Nov 17 2018) with the
following differences:

- POSIX sh(1p) instead of bash
- suckless' sbase support
- manual pages in mdoc(7) format
- split rejmerge(8) manual page into rejmerge(8) & rejmerge.conf(5)
- GNU-style options/help/usage
- new `-c/--config` option to specify an alternate config file
- new `-n/--dry-run` option to print the diffs without any action
- bash completion

See git log for complete/further differences.

The original sources can be downloaded from:
1. git://crux.nu/tools/pkgutils.git                        (git)
2. https://crux.nu/gitweb/?p=tools/pkgutils.git;a=summary  (web)


REQUIREMENTS
============

Build time
----------
- POSIX sh(1p), make(1p) and "mandatory utilities"

Runtime
-------
- POSIX sh(1p) and "mandatory utilities"
- POSIX vi(1) and more(1) (can be redefined)
- GNU coreutils OR suckless' sbase
  (apply `suckless_sbase.patch` for suckless' sbase support)
- GNU diff(1) from diffutils package
- GNU getopt(1) from util-linux package
- mktemp(1)


INSTALL
=======

The shell command `make install` should install this package.
The shell command `make install_bashcomp` should install bash completion
script.

See `config.mk` file for configuration parameters.


LICENSE
=======

rejmerge is licensed through the GNU General Public License v2 or later
<https://gnu.org/licenses/gpl.html>.
Read the COPYING file for copying conditions.
Read the COPYRIGHT file for copyright notices.
