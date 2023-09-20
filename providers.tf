terraform {
  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "1.43.0"
    }
    aws = {
      source = "hashicorp/aws"
     }
  }
  backend "s3" {
    bucket                      = "vmt-smol-k8s-tf-state"
    key                         = "smol-k8s.json"
    skip_credentials_validation = true
    skip_region_validation      = true
    endpoint                    = "https://s3.eu-central-003.backblazeb2.com"
    region                      = "eu-central-003"
  }
}

provider "hcloud" {
  token = var.hcloud_token
}

