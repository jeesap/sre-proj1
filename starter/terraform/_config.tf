terraform {
   backend "s3" {
     bucket = "sre-jees-terraform"
     key    = "terraform/terraform.tfstate"
     region = "us-east-1"
   }
 }

 provider "aws" {
   region = "us-east-1"

   default_tags {
     tags = local.tags
   }
 }
