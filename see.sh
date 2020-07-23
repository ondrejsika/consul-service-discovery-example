#!/bin/sh

services=$(curl -fsSL ${CONSUL_HTTP_ADDR:-localhost:8500}/v1/catalog/service/consul-demo-service | jq -r '.[] | .ServiceAddress + ":" + (.ServicePort|tostring)')
for service in $services; do
  curl $service$1
done
