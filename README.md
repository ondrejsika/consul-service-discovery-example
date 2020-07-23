# Consul Service Discovery Example

## Run Consul Cluster

```
./run-consul.sh
```

See: <http://127.0.0.1:8500>

## Run Prometheus

```
./run-prometheus.sh
```

See: <http://127.0.0.1:9090>

## Start Services (consul-demo-service)

Source of [ondrejsika/consul-demo-service](https://github.com/ondrejsika/consul-demo-service)

```
./run-services.sh
```

See:

- <http://127.0.0.1:8000>
- <http://127.0.0.1:8001>
- <http://127.0.0.1:8002>
- <http://127.0.0.1:8003>

or curl:

```
curl http://127.0.0.1:8000
curl http://127.0.0.1:8001
curl http://127.0.0.1:8002
curl http://127.0.0.1:8003
```

## Run Load

```
./run-load-root.sh
```

## See Services

```
./run-see.sh /
```

## Refresh Service Config

```
./run-see.sh /refresh
```

## Check Health

```
./run-see.sh /livez
```

## See Prometheus Metrics

```
./run-see.sh /metrics
```

## Set Configuration Using Consul KV

### Global Config

Set

```
./run-set.sh global foo
```

Unset

```
./run-unset.sh global
```

### Region Config

Set

```
./run-set.sh region/us-west bar
```

Unset

```
./run-unset.sh region/us-west
```

### Service Config

Set

```
./run-set.sh service/us-west-1 baz
```

Unset

```
./run-unset.sh service/us-west-1
```

## See Metrics in Prometheus

- Charts: <http://127.0.0.1:9090/new/graph?g0.range_input=5m&g0.expr=requests_root_ps&g0.tab=0&g1.range_input=1h&g1.expr=avg(requests_root_ps)&g1.tab=0&g2.range_input=1h&g2.expr=refresh_pm&g2.tab=0&g3.range_input=1h&g3.expr=avg(refresh_pm)&g3.tab=0>
- Alerts: <http://127.0.0.1:9090/new/alerts>

## Fire Alert

```
./run-load-refresh.sh
```

Wait & check Prometheus

```
./stop-load-refresh.sh
```

Wait & check Prometheus, it will be OK again

## Destroy

```
./stop-all.sh
```
