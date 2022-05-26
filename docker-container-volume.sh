docker volume create postgresdata

docker container create --name postgresvolume --publish 5435:5432 --mount "type=volume,source=postgresdata,destination=/var/lib/postgresql/data" --env POSTGRES_USER=postgres --env POSTGRES_PASSWORD=kadatahu postgres:alpine3.16

docker container stop postgresvolume

docker container rm postgresvolume