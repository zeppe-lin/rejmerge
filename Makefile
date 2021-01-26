#
#  rejmerge - Merge files that were rejected during package upgrades.
#
#  Copyright (c) 2000-2005 by Per Liden <per@fukt.bth.se>
#  Copyright (c) 2006-2017 by CRUX team (http://crux.nu)
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, 
#  USA.
#

DESTDIR =
PREFIX  = /usr/local
BINDIR  = $(PREFIX)/sbin
MANDIR  = $(PREFIX)/share/man
ETCDIR  = /etc

NAME    = rejmerge
VERSION = 5.40.7

all: rejmerge rejmerge.8

%: %.in
	sed -e "s/#VERSION#/$(VERSION)/" $< > $@

install: all
	install -Dm0755 rejmerge      $(DESTDIR)$(BINDIR)/rejmerge
	install -Dm0644 rejmerge.conf $(DESTDIR)$(ETCDIR)/rejmerge.conf
	install -Dm0644 rejmerge.8    $(DESTDIR)$(MANDIR)/man8/rejmerge.8

uninstall:
	rm -f $(DESTDIR)$(BINDIR)/rejmerge
	rm -f $(DESTDIR)$(ETCDIR)/rejmerge.conf
	rm -f $(DESTDIR)$(MANDIR)/man8/rejmerge.8

clean:
	rm -f rejmerge rejmerge.8

.PHONY: install uninstall clean

# End of file.
