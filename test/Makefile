# Makefile for rejmerge tests

##################################################################

REJMERGE = ../src/rejmerge
FAKEROOT = ./rejmerge-fakeroot

##################################################################

all: setup run

setup:
	@echo "Setting up test environment..."
	@mkdir -p $(FAKEROOT)/etc $(FAKEROOT)/var/lib/pkg/rejected/etc

run:
	@echo "# Comment\nx=1" > $(FAKEROOT)/etc/example.conf
	@echo "# Comment\nx=2" > $(FAKEROOT)/var/lib/pkg/rejected/etc/example.conf
	@chmod 644 $(FAKEROOT)/etc/example.conf
	@chmod 600 $(FAKEROOT)/var/lib/pkg/rejected/etc/example.conf
	@$(REJMERGE) -c ./rejmerge.conf -r $(FAKEROOT) -n > ./test1.actual
	@diff -u ./test1.expected ./test1.actual

clean:
	@echo "Cleaning up test environment..."
	@rm -rf $(FAKEROOT)

.PHONY: all setup run clean
