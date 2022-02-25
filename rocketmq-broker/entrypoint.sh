#!/bin/bash

./bin/mqbroker -c "${BROKER_CONFIG_FILE:-conf/broker.conf}"

exec "$@"
