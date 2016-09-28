EVENT_HANDLER=<script to handle events>
HANDLER_DIR=<folder to handle scripts>

docker service create --name nomad -e SERVICE=nomad -e CLUSTER=nomad --network serf --replicas 3 jmcarbo/docker-swarm-nomad:latest
