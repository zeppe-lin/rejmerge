OVERVIEW
========

`rejmerge` inspects and merges files rejected during package upgrades.

This distribution is a fork of CRUX `rejmerge` (from `pkgutils`) at
commit `9ca0da6` (Sat Nov 17 2018), with the following changes:
  * Rewritten in POSIX `sh(1p)` instead of `bash(1)`
  * Added support of suckless `sbase` (see `extra/suckless_sbase.patch`)
  * Manual pages in `scdoc(5)` format
    * Split into `rejmerge(8)` and `rejmerge.conf(5)`
  * GNU-style options, help, and usage output
  * New `-c/--config` option to specify an alternate config file
  * New `-n/--dry-run` option to show diffs without applying changes
  * Bash completion support

See the git log for full history.

Original sources:
  * https://git.crux.nu/tools/pkgutils.git

---

REQUIREMENTS
============

Build-time
----------
  * POSIX `sh(1p)`, `make(1p)`, and "mandatory utilities"
  * `scdoc(1)` to generate manual pages

Runtime
-------
  * POSIX `sh(1p)` and "mandatory utilities"
  * `vi(1)` and `more(1)` (configurable)
  * GNU `coreutils` **or** suckless `sbase`
    * Apply `extra/suckless_sbase.patch` for `sbase` support
  * GNU `diff(1)` from `diffutils`
  * GNU `getopt(1)` from `util-linux`
  * `mktemp(1)` (provided by BSD, GNU `coreutils`, or suckless
    `sbase`; not yet part of POSIX)

---

INSTALLATION
============

To install:

```sh
# as root
make install
```

Configuration parameters are defined in `config.mk`.  
For `sbase`/`ubase` support, see `extra/suckless_sbase.patch`.

---

DOCUMENTATION
=============

Manual pages are provided in `/man` and installed under the system
manual hierarchy.

---

LICENSE
=======

`rejmerge` is licensed under the
[GNU General Public License v2 or later](https://gnu.org/licenses/gpl.html).

See `COPYING` for license terms and `COPYRIGHT` for notices.
