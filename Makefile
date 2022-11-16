# This file is a part of rejmerge.
# See COPYING and COPYRIGHT files for corresponding information.

VERSION = 5.41

PREFIX  = /usr/local
BINDIR  = ${PREFIX}/sbin
MANDIR  = ${PREFIX}/share/man

all: rejmerge rejmerge.8 rejmerge.conf.5

%: %.in
	sed "s/@VERSION@/${VERSION}/" $^ > $@

%: %.pod
	pod2man --nourls -r ${VERSION} -c ' ' \
		-n $(basename $@) -s $(subst .,,$(suffix $@)) $< > $@

install: all
	install -m 0755 -Dt ${DESTDIR}${BINDIR}/       rejmerge
	install -m 0644 -Dt ${DESTDIR}${MANDIR}/man8/  rejmerge.8
	install -m 0644 -Dt ${DESTDIR}${MANDIR}/man5/  rejmerge.conf.5

uninstall:
	rm -f ${DESTDIR}${BINDIR}/rejmerge
	rm -f ${DESTDIR}${MANDIR}/man8/rejmerge.8
	rm -f ${DESTDIR}${MANDIR}/man5/rejmerge.conf.5

clean:
	rm -f rejmerge rejmerge.8 rejmerge.conf.5

.PHONY: install uninstall clean

# vim:cc=72:tw=70
# End of file.
