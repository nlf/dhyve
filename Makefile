PREFIX ?= /usr/local


all: xhyve/build/xhyve

install: all
	@install -CSv xhyve/build/xhyve $(PREFIX)/bin/
	@install -CSv dhyve $(PREFIX)/bin/

xhyve/build/xhyve:
	$(MAKE) -C xhyve

clean:
	$(MAKE) clean -C xhyve

.phony: clean
