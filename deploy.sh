docker rmi -f $(docker images eureka-demo -q)
./mvnw package spring-boot:build-image
VERSION=$(git rev-parse --short HEAD) docker stack deploy -c stack.yml eureka-demo