docker network create --driver bridge postgresnetwork

docker container create --name postgres --network postgresnetwork --env POSTGRES_USER=postgres --env POSTGRES_PASSWORD=hai postgres:alpine3.16

docker image pull mongo-express:latest

docker container create --name mongodbexpress --network mongonetwork --publish 8081:8081 --env ME_CONFIG_MONGODB_URL="mongodb://eko:eko@mongodb:27017/" mongo-express:latest

docker container start mongodb

docker container start mongodbexpress

docker network disconnect mongonetwork mongodb

docker network connect mongonetwork mongodb