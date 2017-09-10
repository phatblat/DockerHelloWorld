#!/bin/bash -ex

docker swarm init
docker stack deploy -c docker-compose.yml getstartedlab
docker service ls
docker service ps $(docker service ls --format "{{.ID}}")

