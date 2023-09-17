variable "hcloud_token" {
  sensitive = true
}

variable "cloudflare_account_id" {
  type = string
}

variable "cloudflare_zone_id" {
  type = string
}

variable "tunnel_name" {
  type = string
}

variable "location" {
  type = string
}

variable "username" {
  type = string
}

variable "github_username" {
  type = string
}

variable "ssh_pub_key" {
  sensitive = true
}

variable "server_type" {
  stype = string
}

variable "hetzner_ssh_key_name" {
  type = string
}
