PREFIX ?= /usr/local

install: all
	@install -CSv dhyve $(PREFIX)/bin/
