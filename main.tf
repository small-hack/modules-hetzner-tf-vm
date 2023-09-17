resource "hcloud_floating_ip" "this" {
  type          = "ipv4"
  home_location = var.location
}

// add the tunnel token to the cloud-init userdata
data template_file "this" {
  template = file("./user-data.yaml")

  vars = {
    tunnel_token           = "${cloudflare_tunnel.this.tunnel_token}"
    username               = var.username
    github_username        = var.github_username
    ssh_pub_key            = var.ssh_pub_key
  }
}

resource "random_pet" "this" {
}

resource "hcloud_server" "this" {
  name        = random_pet.this.id
  server_type = var.server_type
  image       = "ubuntu-22.04"
  location    = var.location
  ssh_keys    = ["${var.hetzner_ssh_key_name}"]
  user_data = "${data.template_file.this.rendered}"
  public_net {
    ipv4_enabled = true
    ipv6_enabled = true
  }
}

resource "hcloud_floating_ip_assignment" "this" {
  floating_ip_id = hcloud_floating_ip.this.id
  server_id      = hcloud_server.this.id
}

output "ipv4_address" {
  value = hcloud_server.this.ipv4_address
  description = "Public IP address for the instance"
}

output "floating_address" {
  value = hcloud_floating_ip.this.ipv4_address
  description = "Public IP address for the instance"
}
