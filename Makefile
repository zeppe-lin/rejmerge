.POSIX:

include config.mk

all: rejmerge rejmerge.8 rejmerge.conf.5

%: %.pod
	pod2man -r "${NAME} ${VERSION}" -c ' ' \
		-n $(basename $@) -s $(subst .,,$(suffix $@)) $< > $@

%: %.in
	sed "s/@VERSION@/${VERSION}/g" $< > $@

install: all
	mkdir -p              ${DESTDIR}${PREFIX}/sbin
	mkdir -p              ${DESTDIR}${MANPREFIX}/man5
	mkdir -p              ${DESTDIR}${MANPREFIX}/man8
	cp -f rejmerge        ${DESTDIR}${PREFIX}/sbin/
	cp -f rejmerge.conf.5 ${DESTDIR}${MANPREFIX}/man5/
	cp -f rejmerge.8      ${DESTDIR}${MANPREFIX}/man8/
	chmod 0755            ${DESTDIR}${PREFIX}/sbin/rejmerge
	chmod 0644            ${DESTDIR}${MANPREFIX}/man5/rejmerge.conf.5
	chmod 0644            ${DESTDIR}${MANPREFIX}/man8/rejmerge.8

uninstall:
	rm -f ${DESTDIR}${PREFIX}/sbin/rejmerge
	rm -f ${DESTDIR}${MANPREFIX}/man5/rejmerge.conf.5
	rm -f ${DESTDIR}${MANPREFIX}/man8/rejmerge.8

clean:
	rm -f rejmerge rejmerge.8 rejmerge.conf.5

.PHONY: all install uninstall clean
