OVERVIEW
========

`rejmerge` merges files rejected during package upgrades.

It is a fork of CRUX `rejmerge` (from `pkgutils`) at commit `9ca0da6`
(Sat Nov 17 2018), with the following changes:
  * POSIX `sh(1p)` instead of `bash(1)`
  * Support of suckless `sbase`
  * Manual pages in `scdoc(5)` format
    * Split into `rejmerge(8)` and `rejmerge.conf(5)`
  * GNU-style options, help, and usage output
  * New `-c/--config` option to specify an alternate config file
  * New `-n/--dry-run` option to print the diffs without any action
  * Bash completion

See git log for full history.

Original sources: https://git.crux.nu/tools/pkgutils.git


REQUIREMENTS
============

Build-time
----------
  * POSIX `sh(1p)`, `make(1p)` and "mandatory utilities"
  * `scdoc(1)` to build manual pages

Runtime
-------
  * POSIX `sh(1p)` and "mandatory utilities"
  * `vi(1)` and `more(1)` (can be redefined)
  * GNU `coreutils` OR suckless' `sbase`
    (apply `extra/suckless_sbase.patch` for `sbase` support)
  * GNU `diff(1)` from `diffutils`
  * GNU `getopt(1)` from `util-linux`
  * `mktemp(1)` (BSD, GNU `coreutils`, or suckless `sbase` provide it;
    POSIX does not)


INSTALLATION
============

To install this package, run:

    make install

Configuration parameters are in `config.mk`.

For `sbase`/`ubase` support, see `extra/suckless_sbase.patch`.


DOCUMENTATION
=============

Manual pages are in `/man`.


LICENSE
=======

`rejmerge` is licensed through the GNU General Public License v2 or
later <https://gnu.org/licenses/gpl.html>.
See `COPYING` for terms and `COPYRIGHT` for notices.
