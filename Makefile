DESTDIR ?= /usr/local

help:
	@echo "Check first, if all dependencies have been installed with 'make verify'"
	@echo "Use 'make install' to install this software"

verify:
	@$(SHELL) ./verify.sh
	@echo "All dependencies are installed."


install:
	install -dm755 $(DESTDIR)
	install -dm755 $(DESTDIR)/bin
	mkdir -pm755 $(DESTDIR)/share/man/man1
	install -m755 bin/mkslideshow $(DESTDIR)/bin/mkslideshow
	install -m755 bin/mkslideshow_gui $(DESTDIR)/bin/mkslideshow_gui
	install -m644 doc/mkslideshow.1 $(DESTDIR)/share/man/man1/mkslideshow.1

.PHONY: help verify install

