provider "aws" {

  region = "ap-south-1"
 
}

terraform {
  required_providers {
    digitalocean = {
        source = "digitalocean/digitalocean"
    }
  }
}


resource "aws_eip" "kplabs_app_ip" {
  domain = "vpc"
}
