./mvnw package spring-boot:build-image
docker rmi -f $(docker images eureka-demo -q)
VERSION=$(git rev-parse --short HEAD) docker stack deploy -c stack.yml eureka-demo