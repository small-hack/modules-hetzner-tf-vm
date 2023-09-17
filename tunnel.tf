// Generates a 35-character secret.
resource "random_id" "this" {
  byte_length = 35
}

// Creates a new cloudflare-managed tunnel for the VM.
resource "cloudflare_tunnel" "this" {
  account_id = var.cloudflare_account_id
  name       = var.tunnel_name
  secret     = random_id.this.b64_std
  config_src = "cloudflare"
}

// Creates the CNAME record that routes <>-vpn.${var.cloudflare_zone} to the tunnel.
resource "cloudflare_record" "this" {
  zone_id = var.cloudflare_zone_id
  name    = var.tunnel_name
  value   = "${cloudflare_tunnel.this.cname}"
  type    = "CNAME"
  proxied = true
}

// Creates the configuration for the tunnel.
resource "cloudflare_tunnel_config" "this" {
  tunnel_id = cloudflare_tunnel.this.id
  account_id = var.cloudflare_account_id
  config {
   ingress_rule {
     hostname = "${cloudflare_record.this.hostname}"
     service  = "http://${var.service_name}:${var.service_port}"
   }
   ingress_rule {
     service  = "http_status:404"
   }
  }
}
