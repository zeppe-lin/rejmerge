.POSIX:

include ../config.mk

all:

install:
	mkdir -p $(DESTDIR)$(BASHCOMPDIR)
	cp -f bash_completion $(DESTDIR)$(BASHCOMPDIR)/rejmerge

uninstall:
	rm -f $(DESTDIR)$(BASHCOMPDIR)/rejmerge

clean:

.PHONY: all install uninstall clean
