resource "aws_s3_bucket" "my-bucket" {
  bucket = "free-devops-bootcamp"
  tags = {
    Name = "free-devops-bootcamp"
  }
}