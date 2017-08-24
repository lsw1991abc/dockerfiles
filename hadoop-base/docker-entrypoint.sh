#!/bin/bash

export $PATH

/etc/init.d/ssh start  -d

exec "$@"