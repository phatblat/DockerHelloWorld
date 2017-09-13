#!/bin/bash -ex

set SERVICE_NAME=getstartedlab

docker swarm init
docker stack deploy -c docker-compose.yml $SERVICE_NAME

docker service ls
docker service ps $SERVICE_NAME_web
# List by service ID
# docker service ps $(docker service ls --format "{{.ID}}")

echo "Containers:"
docker container ls -q

# TODO: Not sure which identifiers are tasks
#docker inspect --format='{{.Status.ContainerStatus.ContainerID}}' <task>

echo "Task IDs"
docker inspect --format="{{index .Config.Labels \"com.docker.swarm.task.id\"}}" $(docker container ls -q)


