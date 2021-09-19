rejmerge.conf(5) "version #VERSION#" "Package Manager Manual"

# NAME

rejmerge.conf - configuration file for rejmerge

# DESCRIPTION

When *rejmerge*(8) is started it will source _/etc/rejmerge.conf_.
This file can be used to alter the way *rejmerge*(8) displays file differences
and performs file merges. Changing the default behaviour is done by re-defining
the shell functions *rejmerge_diff()*, *rejmerge_merge()* and/or shell
variables *EDITOR*, *PAGER*.

## rejmerge_diff()

This function is executed once for each rejected file. Arguments _$1_ and _$2_
contains the path to a temporary file where this function should write its
result. The contents of the temporary file will later be presented to the user
as the difference between the two files.

## rejmerge_merge

This function is executed when the user chooses to merge two files. Arguments
_$1_ and _$2_ contains the paths to the installed and rejected files. Argument
_$3_ contains the path to a temporary file where this function should write its
result. The contents of the temporary file will later be presented to the user
as the merge result.

This function also has the option to set the variable *REJMERGE_MERGE_INFO*.
The contents of this variable will be displayed as informational text after a
merge has been performed. Its purpose is to provide information about the
merge, e.g. "5 merge conflicts found".

## EDITOR

This variable defines the editor used in merge operation.

Default is _/bin/vi_.

## PAGER

This variable defines the pager used in diff and merge operations.

Default is _/bin/more_.

# FILES

/etc/rejmerge.conf
	Configuration file.

# SEE ALSO

*rejmerge*(8), *pkgadd*(8), *pkgrm*(8), *pkginfo*(8), *pkgmk*(8)

# COPYRIGHT

Copyright (c) 2000-2005 Per Liden++
Copyright (c) 2006-2017 CRUX Team (https://crux.nu)

*rejmerge* is licensed through the GNU General Public License v2+,
read the COPYING file for the complete license.

; vim:ft=scdoc:cc=80
; End of file.
