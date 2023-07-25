resource "hcloud_server" "control_plane" {
  name        = "control-plane"
  server_type = "cx31"
  image       = "debian-12"
  location    = "nbg1"
  ssh_keys    = ["max"] 
  user_data = "${file("user-data.yaml")}"
  public_net {
    ipv4_enabled = true
    ipv6_enabled = true
  }
}

output "control_plane_ipv4_address" {
  value = hcloud_server.control_plane.ipv4_address
}

resource "hcloud_server" "node" {
  name        = "node0"
  server_type = "cx31"
  image       = "debian-12"
  location    = "nbg1"
  ssh_keys    = ["max"] 
  user_data = "${file("user-data.yaml")}"
  public_net {
    ipv4_enabled = true
    ipv6_enabled = true
  }
}

output "node0_ipv4_address" {
  value = hcloud_server.node0.ipv4_address
}

