
PREFIX  = /usr/local
BINDIR  = $(PREFIX)/sbin
MANDIR  = $(PREFIX)/share/man
ETCDIR  = /etc

NAME    = rejmerge
VERSION = 5.40.7

all: rejmerge rejmerge.8 rejmerge.conf.5

%: %.scd
	sed -e "s/#VERSION#/$(VERSION)/g" $< | scdoc > $@

%: %.in
	sed -e "s/#VERSION#/$(VERSION)/g" -e "s/#NAME#/$(NAME)/g" $< > $@

install: all
	install -m 755 -D $(NAME)              $(DESTDIR)$(BINDIR)/$(NAME)
	install -m 644 -D $(NAME).conf.example $(DESTDIR)$(ETCDIR)/$(NAME).conf
	install -m 644 -D $(NAME).8            $(DESTDIR)$(MANDIR)/man8/$(NAME).8
	install -m 644 -D $(NAME).conf.5       $(DESTDIR)$(MANDIR)/man5/$(NAME).conf.5

uninstall:
	rm -f $(DESTDIR)$(BINDIR)/rejmerge
	rm -f $(DESTDIR)$(ETCDIR)/rejmerge.conf
	rm -f $(DESTDIR)$(MANDIR)/man8/rejmerge.8
	rm -f $(DESTDIR)$(MANDIR)/man5/rejmerge.conf.5

clean:
	rm -f rejmerge rejmerge.8 rejmerge.conf.5

.PHONY: install uninstall clean

