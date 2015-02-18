# -*- mode: makefile-gmake; coding: utf-8 -*-

all:

install:
	install -d $(DESTDIR)/usr/share/opkg-tools/
	cp -r opkg.in $(DESTDIR)/usr/share/opkg-tools/

	install -d $(DESTDIR)/usr/bin
	install -m 755 opkg-build $(DESTDIR)/usr/bin
	install -m 755 opkg-make $(DESTDIR)/usr/bin

