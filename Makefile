.POSIX:

include config.mk

all:

install:
	mkdir -p ${DESTDIR}${PREFIX}/sbin
	mkdir -p ${DESTDIR}${MANPREFIX}/man5
	mkdir -p ${DESTDIR}${MANPREFIX}/man8
	sed "s/@VERSION@/${VERSION}/" rejmerge \
		> ${DESTDIR}${PREFIX}/sbin/rejmerge
	cp -f rejmerge.conf.5 ${DESTDIR}${MANPREFIX}/man5/
	cp -f rejmerge.8 ${DESTDIR}${MANPREFIX}/man8/
	chmod 0755 ${DESTDIR}${PREFIX}/sbin/rejmerge
	chmod 0644 ${DESTDIR}${MANPREFIX}/man5/rejmerge.conf.5
	chmod 0644 ${DESTDIR}${MANPREFIX}/man8/rejmerge.8

uninstall:
	rm -f ${DESTDIR}${PREFIX}/sbin/rejmerge
	rm -f ${DESTDIR}${MANPREFIX}/man5/rejmerge.conf.5
	rm -f ${DESTDIR}${MANPREFIX}/man8/rejmerge.8

install_bashcomp:
	mkdir -p ${DESTDIR}${BASHCOMPDIR}
	cp -f bash_completion ${DESTDIR}${BASHCOMPDIR}/rejmerge

uninstall_bashcomp:
	rm -f ${DESTDIR}${BASHCOMPDIR}/rejmerge

clean:
	rm -f ${DIST}.tar.gz

dist: clean
	git archive --format=tar.gz -o ${DIST}.tar.gz --prefix=${DIST}/ HEAD

.PHONY: all install uninstall install_bashcomp uninstall_bashcomp clean dist
