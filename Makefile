# rejmerge version
VERSION = 5.41

# paths
PREFIX     = /usr/local
MANPREFIX  = ${PREFIX}/share/man
SYSCONFDIR = ${PREFIX}/etc

all: rejmerge rejmerge.8 rejmerge.conf.5

%: %.pod
	sed "s|@SYSCONFDIR@|${SYSCONFDIR}|g" $< | pod2man --nourls \
		-r ${VERSION} \
		-c ' ' \
		-n $(basename $@) \
		-s $(subst .,,$(suffix $@)) \
		- > $@

%: %.in
	sed -e "s|@VERSION@|${VERSION}|g" \
	    -e "s|@SYSCONFDIR@|${SYSCONFDIR}|g" \
	    $< > $@

check:
	@podchecker *.pod
	@grep -Eiho "https?://[^\"\\'> ]+" *.* | httpx -silent -fc 200 -sc

install: all
	mkdir -p ${DESTDIR}${PREFIX}/sbin
	mkdir -p ${DESTDIR}${MANPREFIX}/man5
	mkdir -p ${DESTDIR}${MANPREFIX}/man8
	cp -f rejmerge ${DESTDIR}${PREFIX}/sbin/
	chmod 0755 ${DESTDIR}${PREFIX}/sbin/rejmerge
	cp -f rejmerge.conf.5 ${DESTDIR}${MANPREFIX}/man5/
	cp -f rejmerge.8      ${DESTDIR}${MANPREFIX}/man8/

uninstall:
	rm -f ${DESTDIR}${PREFIX}/sbin/rejmerge
	rm -f ${DESTDIR}${MANPREFIX}/man5/rejmerge.conf.5
	rm -f ${DESTDIR}${MANPREFIX}/man8/rejmerge.8

clean:
	rm -f rejmerge rejmerge.8 rejmerge.conf.5

.PHONY: install uninstall clean
