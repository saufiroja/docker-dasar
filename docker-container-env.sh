docker image pull postgres:alpine3.16

docker container create --name contohpostgres --publish 5433:5432 --env POSTGRES_USER=postgres --env POSTGRES_PASSWORD=hai postgres:alpine3.16