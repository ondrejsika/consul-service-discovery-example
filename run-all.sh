#!/bin/sh

./run-consul.sh
sleep 1
./run-prometheus.sh
sleep 1
./run-services.sh
sleep 1
./run-load-root.sh
