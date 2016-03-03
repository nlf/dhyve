## DEPRECATED
This project has been deprecated. I'm only maintaining [dlite](https://github.com/nlf/dlite). If you want something like dhyve, look at docker-machine or [corectl](https://github.com/TheNewNormal/corectl).

A little helper script to make running boot2docker inside of xhyve simple

Installation
------------

```bash
brew tap nlf/dhyve
brew install --HEAD dhyve
```

Usage
-----

```bash
dhyve init
dhyve up
eval "$(dhyve env)"
```

And now you can use docker like normal.

Ports exposed from a docker container will be available on the vm, which will have an entry in `/etc/hosts` as `dhyve.vm` to make it easier to access.

An NFS share is created on your host to expose the `/Users` directory to the vm network as well. It will *only* allow connections from the dhyve vm, so should be reasonably secure.

If you need to access the virtual machine directly, an entry will be added to `/etc/hosts` with the name `dhyve.vm`. In addition to that, a configuration section will be added to `~/.ssh/config` so that you can use `ssh dhyve.vm`.

See `dhyve help` for more usage information.


CREDITS
-------

This project draws code and inspiration from prior works. Thank you!

- [ailispaw/boot2docker-xhyve](https://github.com/ailispaw/boot2docker-xhyve)
- [boot2docker/boot2docker](https://github.com/boot2docker/boot2docker)
