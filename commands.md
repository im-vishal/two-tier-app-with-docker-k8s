# Docker Commands
- docker build . -t flaskapp

- docker tag flaskapp:latest virtualvishal/flaskapp:latest
- docker push virtualvishal/flaskapp:latest 

- docker compose up -d
- docker compose down

- to stop & remove all containers
```
docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
```

- to remove all iamges
```
docker rmi -f $(docker images -aq)
```

# Kubernetes Commands