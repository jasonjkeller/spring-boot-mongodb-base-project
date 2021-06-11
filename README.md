# Spring Boot MongoDB Base Project

This application was developed to demonstrate Spring Boot with MongoDB with simple API.

Two Docker containers are deployed, one for the Spring Boot service and the other for MongoDB.
Additionally, the Spring Boot service is monitored by the New Relic Java agent.

Technologies Used

- Spring Boot 2.4.1
- Spring Data MongoDB
- Lombok
- MongoDB
- New Relic Java agent

### Requirements

Update the `newrelic/newrelic.yml` file with a valid APM `license_key` to attach the New Relic Java agent.

### Build and run with Docker

Build application:
```shell
./gradlew clean build
```

Build and run docker containers:
```shell
docker-compose up --build -V
```

View running containers:
```shell
docker ps
```

Get an interactive shell in a container:
```shell
docker exec -it <container name> /bin/sh
```

### Usage

The SpringBoot service is accessible at `http://localhost:8080/` and MongoDB at `http://localhost:27017/`.

The container for the SpringBoot service also exposes port `5005` so that you can easily attach a debugger for the Java agent using Intellij. 

POST data to MongoDB:
```shell
curl -X POST --location "http://localhost:8080/api/v1/product"
```

GET data from MongoDB:
```shell
curl -X GET --location "http://localhost:8080/api/v1/product"
```

### Related Articles

[Docker Compose For Spring Boot with MongoDB](https://javatodev.com/docker-compose-for-spring-boot-with-mongodb/)