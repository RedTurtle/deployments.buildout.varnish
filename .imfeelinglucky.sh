#!/bin/bash
# we want to exit on errors
set -e

VIRTUALENV_BIN=`which virtualenv-2.7 || which virtualenv`
PYTHON=`which python2.7 || which python`
"$VIRTUALENV_BIN" --no-site-packages --setuptools -p "$PYTHON" .

# Let's enter the virtualenv
. bin/activate

# Now we have
PYTHON=`which python2.7 || which python`

./bin/pip install --upgrade setuptools
$PYTHON bootstrap.py
./bin/buildout
