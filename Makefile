# rejmerge version
VERSION = 5.41

PREFIX  = /usr/local
BINDIR  = ${PREFIX}/sbin
MANDIR  = ${PREFIX}/share/man

all: rejmerge rejmerge.8 rejmerge.conf.5

%: %.in
	sed "s/@VERSION@/${VERSION}/" $^ > $@

%: %.pod
	pod2man --nourls -r ${VERSION} -c ' ' -n $(basename $@) \
		-s $(subst .,,$(suffix $@)) $<  >  $@

check:
	@podchecker *.pod
	@grep -Eiho "https?://[^\"\\'> ]+" *.* | httpx -silent -fc 200 -sc

install: all
	mkdir -p ${DESTDIR}${BINDIR}
	mkdir -p ${DESTDIR}${MANDIR}/man5
	mkdir -p ${DESTDIR}${MANDIR}/man8
	cp -f rejmerge ${DESTDIR}${BINDIR}/
	chmod 0755     ${DESTDIR}${BINDIR}/rejmerge
	cp -f rejmerge.conf.5 ${DESTDIR}${MANDIR}/man5/
	cp -f rejmerge.8      ${DESTDIR}${MANDIR}/man8/

uninstall:
	rm -f ${DESTDIR}${BINDIR}/rejmerge
	rm -f ${DESTDIR}${MANDIR}/man8/rejmerge.8
	rm -f ${DESTDIR}${MANDIR}/man5/rejmerge.conf.5

clean:
	rm -f rejmerge rejmerge.8 rejmerge.conf.5

.PHONY: install uninstall clean

# vim:cc=72:tw=70
# End of file.
