# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork

resource "google_compute_subnetwork" "wk-10-subnet-a" {
  name                     = "wk-10-subnet-a"
  ip_cidr_range            = "10.101.10.0/24"
  region                   = "us-central1"
  network                  = google_compute_network.vpc_network.id
  private_ip_google_access = true

}

# Subnet B
resource "google_compute_subnetwork" "wk-10-subnet-b" {
  name                     = "wk-10-subnet-b"
  ip_cidr_range            = "10.101.111.0/24"
  region                   = "us-central1"
  network                  = google_compute_network.vpc_network.id
  private_ip_google_access = true

}




















































/* # Regional Proxy-Only Subnet 
# Required for Regional Application Load Balancer for traffic offloading
resource "google_compute_subnetwork" "regional_proxy_subnet" {
  name   = "wk-10-subnet-region_proxy"
  region = "us-central1"
  # apparently the cidr can be anything, google docs use 10.129.0.0/23 it seems
  # must match the fw rule to allow proxy-to-backend traffic source range though
  ip_cidr_range = "10.101.11.0/23"
  # This purpose reserves this subnet for regional Envoy-based load balancers
  purpose = "REGIONAL_MANAGED_PROXY"
  network = google_compute_network.vpc_network.id
  role    = "ACTIVE"
} */