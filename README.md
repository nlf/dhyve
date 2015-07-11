A little helper script to make running boot2docker inside of xhyve simple

Usage:

```bash
make
make install
```

This will install `dhyve` itself, [xhyve](https://github.com/mist64/xhyve) as well as uuid2mac which was shamelessly lifted from [boot2docker-xhyve](https://github.com/ailispaw/boot2docker-xhyve).

Note: you may have to use `sudo` when running `make install` if `/usr/local/bin` isn't writable by your user. Also you'll want to make sure `/usr/local/bin` is in your `PATH` environment variable.

```bash
dhyve init
dhyve up
eval "$(dhyve env)"
```

And now you can use docker like normal.

See `dhyve help` for more usage information.
