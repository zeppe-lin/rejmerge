# rejmerge version
VERSION = 5.41

# paths
PREFIX  = /usr/local
SBINDIR = ${PREFIX}/sbin
ETCDIR  = ${PREFIX}/etc
LIBDIR  = ${PREFIX}/lib
MANDIR  = ${PREFIX}/share/man

all: rejmerge rejmerge.8 rejmerge.conf.5

%: %.pod
	sed -e "s|@ETCDIR@|${ETCDIR}|g" \
	    -e "s|@LIBDIR@|${LIBDIR}|g" \
	    $< | pod2man --nourls \
		-r ${VERSION} \
		-c ' ' \
		-n $(basename $@) \
		-s $(subst .,,$(suffix $@)) \
		- > $@

%: %.in
	sed -e "s|@VERSION@|${VERSION}|g" \
	    -e "s|@ETCDIR@|${ETCDIR}|g"   \
	    -e "s|@LIBDIR@|${LIBDIR}|g"   \
	    $< > $@

check:
	@podchecker *.pod
	@grep -Eiho "https?://[^\"\\'> ]+" *.* | httpx -silent -fc 200 -sc

install: all
	mkdir -p ${DESTDIR}${SBINDIR}
	mkdir -p ${DESTDIR}${MANDIR}/man5
	mkdir -p ${DESTDIR}${MANDIR}/man8
	cp -f rejmerge ${DESTDIR}${SBINDIR}/
	chmod 0755     ${DESTDIR}${SBINDIR}/rejmerge
	cp -f rejmerge.conf.5 ${DESTDIR}${MANDIR}/man5/
	cp -f rejmerge.8      ${DESTDIR}${MANDIR}/man8/

uninstall:
	rm -f ${DESTDIR}${SBINDIR}/rejmerge
	rm -f ${DESTDIR}${MANDIR}/man8/rejmerge.8
	rm -f ${DESTDIR}${MANDIR}/man5/rejmerge.conf.5

clean:
	rm -f rejmerge rejmerge.8 rejmerge.conf.5

.PHONY: install uninstall clean

# vim:cc=72:tw=70
# End of file.
