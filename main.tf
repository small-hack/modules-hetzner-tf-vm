resource "hcloud_server" "control_plane" {
  name        = "vpn"
  server_type = "cx31"
  image       = "ubuntu-22.04"
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

resource "hcloud_server" "monitoring" {
  name        = "vpn"
  server_type = "cx31"
  image       = "ubuntu-22.04"
  location    = "nbg1"
  ssh_keys    = ["max"] 
  user_data = "${file("monitoring.yaml")}"
  public_net {
    ipv4_enabled = true
    ipv6_enabled = true
  }
}

output "control_plane_ipv4_address" {
  value = hcloud_server.monitoring.ipv4_address
}
