ABOUT rejmerge

    This directory contains rejmerge, a package management utility
    that helps to merge files that were rejected during package
    upgrades.

    This rejmerge distribution is a fork of CRUX' rejmerge utility
    (which is part of CRUX' pkgutils distribution) as of commit
    9ca0da6 (Sat Nov 17 2018) with the following differences:
    * it was rewritten in POSIX sh(1p)
    * added support of suckless' sbase utilities
    * the man page have been rewritten in POD
    * the man page have been split in two man pages: rejmerge(8) and
      rejmerge.conf(5)
    * added bash completion
    See git log for further differences.

    The original sources can be downloaded from:
    1. git://crux.nu/tools/pkgutils.git                         (git)
    2. https://crux.nu/gitweb/?p=tools/pkgutils.git;a=summary   (web)

REQUIREMENTS

    Build time:
    * POSIX sh(1p), make(1p) and "mandatory utilities"
    * pod2man(1pm) from perl distribution

    Runtime:
    * POSIX sh(1p) and "mandatory utilities"
    * sbase or coreutils
    * GNU diffutils

    Tests:
    * podchecker(1pm) to check PODs for errors
    * httpx(1) to check URLs for non-200 response code

INSTALL

    The shell command "make install" should build and install this
    package.

    The shell command "make check" should start some tests like
    checking PODs for errors, checking URLs for non-200 response code,
    etc.

LICENSE

    rejmerge is licensed through the GNU General Public License v2 or
    later <https://gnu.org/licenses/gpl.html>.
    Read the COPYING file for copying conditions.
    Read the COPYRIGHT file for copyright notices.


vim:sw=2:ts=2:sts=2:et:cc=72:tw=70
End of file.
