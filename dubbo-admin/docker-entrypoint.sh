#!/bin/bash

echo "dubbo.registry.address=zookeeper://${ZOOKEEPER_ADDRESS:-zookeeper:2181}" >> "$PROPERTIES"
echo "dubbo.admin.root.password=${ROOT_PASSWORD:-root}" >> "$PROPERTIES"
echo "dubbo.admin.guest.password=${GUEST_PASSWORD:-guest}" >> "$PROPERTIES"

exec "$@"