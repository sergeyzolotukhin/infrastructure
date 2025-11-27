http://192.168.56.2:16686/

#### Jaeger
https://github.com/jaegertracing/jaeger

https://medium.com/@juanluis1702/deploying-jaeger-prometheus-and-grafana-with-docker-compose-87d3bd499bbe

#### Jaeger - Storage Backends
Cassandra, Elasticsearch, and OpenSearch

#### Commands

- SSH to the environment
```shell
ssh root@192.168.56.2
```

vagrant up

cd /vagrant/docker/
docker compose up --detach
docker compose down
exit

vagrant halt

#### Grafana Loki
https://grafana.com/docs/loki/latest/setup/install/docker/#install-with-docker-compose

http://192.168.56.2:3100/
http://192.168.56.2:3000/