# S3
- install terraform
- put terraform aws providers code
- ```terraform init```
- add s3.tf
- ```terraform plan```
- ```terraform apply```


# EC2 instance
- ```ssh-keygen```
- create ec2.tf
- ```terraform plan```
- ```terraform apply```

- to auto approve terraform apply --> ```terraform apply -auto-approve```

- to see output.tf --> ```terraform apply```
- to see resources states --> ```terraform state list```
- to see a resource information --> ```terraform state show aws_instance.my-instance```
- to destroy all resources --> ```terraform destroy```
- to destroy specific resource --> ```terraform destroy --target=aws_instance.my-instance```


# modules
- create modules in a folder
- cd from this folder and do ```terraform init```