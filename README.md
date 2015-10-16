# A varnish 3 buildout #

[![Build Status](https://travis-ci.org/RedTurtle/deployments.buildout.varnish.png?branch=master)](https://travis-ci.org/RedTurtle/deployments.buildout.varnish)

[TOC]

## Introduction ##
This is the a very basic buildout template to run varnish.

## I am feeling lucky! ##
Lucky people read the documentation,
anyway if you have a local copy of this buildout,
try to run this command:
```bash
make
```
## For the impatients ##
To start the buildout:
```bash
virtualenv --no-site-packages .
./bin/pip install -Ur requirements.txt
ln -sf profiles/default.cfg buildout.cfg
./bin/buildout
```
To launch varnish:
```bash
./bin/varnish
```

## Requirements ##
You may want to install some dependencies to make this buildout work:
```bash
# python stuff
apt-get install python-dev python-virtualenv
# other stuff
apt-get install libpcre++-dev libreadline-dev
```

## How to modify this buildout ##
The varnish template for the configuration
is in `templates/varnish.vcl.in`.
This template is inspired by
http://developer.plone.org/hosting/varnish.html#id12.
The buildout will compile this file and create a file in `etc/varnish.vcl`.

## FAQ ##
### Q: How can I change the backend port? ####
__A:__ In the file `buildout.cfg`, section `varnish`,
modify the `backend-port` option,
which defaults to:
```config
[varnish]
...
bind = 127.0.0.1:8099
```

### Q: How can I change varnish port? ####
__A:__ In the file `buildout.cfg`, section `varnish`,
modify the `bind` option,
which defaults to:
```config
[varnish]
...
bind = 127.0.0.1:8099
```

### Q: How can I change varnish telnet interface port? ####
```config
[varnish]
...
telnet = 127.0.0.1:8098
```

### Q: How can I change the cache size? ####
__A:__ In the file `buildout.cfg`, section `varnish`,
modify the `cache-size` option,
which defaults to:
```config
[varnish]
...
cache-size = 512M
```
