# Mattermost Helm Chart

```
docker build -t jkosgei/mattermost:latest mattermost

docker push jkosgei/mattermost:latest

docker build -t jkosgei/mattermost-web:latest nginx

docker push jkosgei/mattermost-web:latest
```

## Install Postgres Helm Chart

```
helm install --name postgres \
  --set postgresUser=mmuser,postgresPassword=secretpassword \
    stable/postgresql
```
