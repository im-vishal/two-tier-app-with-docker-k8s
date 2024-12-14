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
  `kubectl get pods`

- scale deployment --> `kubectl scale deployment two-tier-app-deployment --replicas=5`

# EKS Commands

- create EKS cluster using eks_cluster_setup.md file

- to encode in base 64 --> `echo -n "admin" | base64`

# HELM Commands

- create chart --> `helm create mysql-chart`
- correct the indent of `automountServiceAccountToken` in templates/serviceaccounts.yml
- after updating values.yml & templates/deployment.yml

```
helm package mysql-chart
```

- install chart --> `helm install mysql-chart ./mysql-chart`
- get all --> `kubectl get all`
- list all helm charts --> `helm list`
- uninstall chart --> `helm uninstall mysql-chart`
- get pods in watch mode --> `kubectl get pods -w`
- to interact with mysql docker container
```bash
docker ps
docker exec -it <container-id> bash
mysql -u admin -p
```
- to see the templates with values filled --> ```helm template mysql-chart```

