.PHONY: install

install:
	install -d $(DESTDIR)/etc/skel
	install -m 644 -o root -g root -D etc/skel/.zshrc $(DESTDIR)etc/skel/.zshrc
