# dev 

module "dev-app" {
    source = "./aws_modules"
    my_env = "dev"
    instance_type = "t2.micro"
    ami = "ami-007855ac798b5175e" 
}

#prd
module "prd-app" {
    source = "./aws_modules"
    my_env = "prd"
    instance_type = "t2.medium"
    ami = "ami-007855ac798b5175e" 
}

#stg
module "stg-app" {
    source = "./aws_modules"
    my_env = "stg"
    instance_type = "t2.small"
    ami = "ami-007855ac798b5175e" 
  
}