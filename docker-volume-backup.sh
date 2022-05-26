# cara 1
docker container stop (nama volume yang ingin dibackup)

# buat folder backup

docker container create --name nginxbackup --mount "type=bind,source=folder nyimpan data,destination=/backup" --mount "type=volume,source=postgresdata,destination=/var/lib/postgresql/data" nginx:latest

docker container start nginxbackup

docker container exec -i -t nginxbackup /bin/bash

tar cvf /backup/backup.tar.gz /var/lib/postgresql/data

docker container stop nginxbackup

docker container rm nginxbackup

docker container start postgresvolume

# cara 2
docker image pull ubuntu:latest

docker container stop postgresvolume

docker container run --rm --name ubuntubackup --mount "type=bind,source=folder nyimpan data,destination=/backup" --mount "type=volume,source=postgresdata,destination=/var/lib/postgresql/data" ubuntu:latest tar cvf /backup/backup-lagi.tar.gz /var/lib/postgresql/data

docker container start postgresvolume