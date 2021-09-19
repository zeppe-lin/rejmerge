rejmerge(8) "version #VERSION#" "Package Manager Manual"

# NAME

rejmerge - merge files that were rejected during package upgrades

# SYNOPSIS

*rejmerge* [*-r* _path_]

# DESCRIPTION

*rejmerge* is a _package management_ utility that helps you merge files that
were rejected during package upgrades.

For each rejected file found in _/var/lib/pkg/rejected/_, *rejmerge* will
display difference between the installed version and the rejected version.

The user can then choose to keep the installed version, upgrade to the rejected
version or perform a merge of the two.

# OPTIONS

*-r* _path_
	Specify alternative root (default is "/").

	This should be used if you want to merge rejected files on a temporary
	mounted partition, which is "owned" by another system.

# ENVIRONMENT

## EDITOR

_/bin/vi_ if unset.

## PAGER

_/bin/more_ if unset.

# FILES

/etc/rejmerge.conf
	Configuration file.

/var/lib/pkg/rejected/
	Directory where rejected files are stored.

# SEE ALSO

*rejmerge.conf*(5), *pkgadd*(8), *pkgrm*(8), *pkginfo*(8), *pkgmk*(8)

# COPYRIGHT

Copyright (c) 2000-2005 Per Liden++
Copyright (c) 2006-2017 CRUX team (https://crux.nu)

*rejmerge* is licensed through the GNU General Public License v2+,
read the COPYING file for the complete license.

; vim:ft=scdoc:cc=80
; End of file.
