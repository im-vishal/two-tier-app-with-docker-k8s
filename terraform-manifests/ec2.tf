# Key pair

resource "aws_key_pair" "deployer" {
  key_name = "terra-key"
  public_key = file("/home/virtualvishal/projects/two-tier-app-with-docker-k8s/terra-key.pub")
}


# Default VPC

resource "aws_default_vpc" "default" {
  
}

# Security group
resource "aws_security_group" "security" {
  name = "allow ports"
  description = "this is to open ports for EC2 instance"
  vpc_id = aws_default_vpc.default.id  # interpolation

  # incoming
  ingress {
    description = "This is for SSH"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # outgoing
  egress {
    description = "This is for outgoing internet"
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# EC2 Instance
resource "aws_instance" "my-instance" {
  ami = "ami-085f9c64a9b75eed5" # copy from launch ec2 instance
  instance_type = "t2.micro"
  key_name = aws_key_pair.deployer.key_name
  security_groups = [aws_security_group.security.name]
  tags = {
    Name = "terra-automate"
  }
}