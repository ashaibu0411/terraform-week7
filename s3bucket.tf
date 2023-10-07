terraform {
  backend "s3" {
    bucket         = "vpcwk7"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "vpcwk71"
  }
}




