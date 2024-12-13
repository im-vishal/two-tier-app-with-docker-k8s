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

- after creating master & worker nodes, command to create to nodes:
sudo ssh -i "two-tier-app-k8s.pem" ubuntu@ec2-13-201-33-181.ap-south-1.compute.amazonaws.com

- refer kubeadm_installation.md file to setup kubeadm with master & worker nodey

- apply deployment.yml file
```
kubectl apply -f two-tier-app-deployment.yml
```

- to see pods -->
```kubectl get pods```

- scale deployment --> ```kubectl scale deployment two-tier-app-deployment --replicas=5```


# EKS Commands

- create EKS cluster using eks_cluster_setup.md file

- to encode in base 64 --> ```echo -n "admin" | base64```


