EVENT_HANDLER=<script to handle events>
HANDLER_DIR=<folder to handle scripts>

docker service create --name nomad -e SERVICE=nomad -e CLUSTER=nomad --network serf --replicas 3 jmcarbo/docker-swarm-nomad:latest
docker service create --name nomadworker -e SERVER=nomad --mount "type=bind,source=/var/run/docker.sock,destination=/var/run/docker.sock" -e SERVICE=nomadworker -e CLUSTER=nomadworker --network serf -e WORKER=true --replicas 3 jmcarbo/docker-swarm-nomad:latest
