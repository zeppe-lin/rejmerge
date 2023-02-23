.POSIX:

include config.mk

all: rejmerge rejmerge.8 rejmerge.conf.5

%: %.pod
	pod2man --nourls -r ${VERSION} -c ' ' -n $(basename $@) \
		-s $(subst .,,$(suffix $@)) $< > $@

%: %.in
	sed -e "s|@VERSION@|${VERSION}|g" $< > $@

check:
	@echo "=======> Check PODs for errors"
	@podchecker *.pod
	@echo "=======> Check URLs for response code"
	@grep -Eiho "https?://[^\"\\'> ]+" *.* | xargs -P10 -I{} \
		curl -o /dev/null -sw "[%{http_code}] %{url}\n" '{}'

install-dirs:
	mkdir -p ${DESTDIR}${PREFIX}/sbin
	mkdir -p ${DESTDIR}${MANPREFIX}/man5
	mkdir -p ${DESTDIR}${MANPREFIX}/man8

install: all install-dirs
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

.PHONY: all check install uninstall clean
