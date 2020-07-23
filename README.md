# Consul Service Discovery Example

## Run Consul Cluster

```
docker-compose up -d consul-server-0 consul-server-1 consul-server-2 consul-agent-0 consul-agent-1 consul-agent-2
```

See: <http://127.0.0.1:8500>

## Start Services (consul-demo-service)

Source of [ondrejsika/consul-demo-service](https://github.com/ondrejsika/consul-demo-service)

```
docker-compose up -d service-0 service-1 service-2 service-3
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

## See Services

```
docker-compose run cmd ./see.sh /
```

## Refresh Service Config

```
docker-compose run cmd ./see.sh /refresh
```

## Check Health

```
docker-compose run cmd ./see.sh /livez
```

## Set Configuration Using Consul KV

### Global Config

Set

```
docker-compose run cmd ./set.sh global foo
```

Unset

```
docker-compose run cmd ./unset.sh global
```

### Region Config

Set

```
docker-compose run cmd ./set.sh region/us-west bar
```

Unset

```
docker-compose run cmd ./unset.sh region/us-west
```

### Service Config

Set

```
docker-compose run cmd ./set.sh service/us-west-1 baz
```

Unset

```
docker-compose run cmd ./unset.sh service/us-west-1
```

## Destroy

```
docker-compose down --volumes
```
