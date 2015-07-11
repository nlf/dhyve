A little helper script to make running boot2docker inside of xhyve simple

Usage:

Pull down this repo, and update submodules

```bash
git clone git@github.com:nlf/dhyve.git
git submodule init
git submodule update
```

Install dhyve

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

Ports exposed from a docker container will be available on the vm, which will have an entry in `/etc/hosts` as `dhyve.vm` to make it easier to access.

See `dhyve help` for more usage information.
