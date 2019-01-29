PREFIX ?= /usr/local
SHARE ?= $(PREFIX)/share/nixos-generator

all:

install:
	mkdir -p $(PREFIX)/bin $(SHARE)
	sed \
		-e "s|libexec_dir=\".*\"|libexec_dir=\"$(SHARE)\"|" \
		-e "s|#!/usr/bin/env.*|#!/usr/bin/env bash|" \
		nixos-generate > $(PREFIX)/bin/nixos-generate
	chmod 755 $(PREFIX)/bin/nixos-generate
	cp -r formats config.nix nixos-generate.nix $(SHARE)
