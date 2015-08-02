A little helper script to make running boot2docker inside of xhyve simple

[![Join the chat at https://gitter.im/nlf/dhyve](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/nlf/dhyve?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

Installation
------------

```bash
brew tap nlf/dhyve
brew install --HEAD dhyve
```

Usage
-----

```bash
dhyve init -n vm_name
dhyve up
eval "$(dhyve env)"
```

Where `vm_name` is the name you'd like to give the vm (default if unspecified is `dhyve`). Note that the first vm you create will automatically be set as default, which is why you don't have to specify a name in the following two commands.

And now you can use docker like normal.

Ports exposed from a docker container will be available on the vm, which will have an entry in `/etc/hosts` as `vm_name.vm` (where `vm_name` is the name you gave your vm) to make it easier to access.

An NFS share is created on your host to expose the `/Users` directory to the vm network as well. It will *only* allow connections from the internal network that the VMs connect to, so should be reasonably secure.

If you need to access the virtual machine directly, an entry will be added to `/etc/hosts` with the name `vm_name.vm` (again, where `vm_name` is the name of your vm). In addition to that, a configuration section will be added to `~/.ssh/config` so that you can use `ssh vm_name.vm`.

See `dhyve help` for more usage information.


CREDITS
-------

This project draws code and inspiration from prior works. Thank you!

- [ailispaw/boot2docker-xhyve](https://github.com/ailispaw/boot2docker-xhyve)
- [boot2docker/boot2docker](https://github.com/boot2docker/boot2docker)
