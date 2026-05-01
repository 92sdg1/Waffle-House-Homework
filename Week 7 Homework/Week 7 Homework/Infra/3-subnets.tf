#Go to:
#VPC Network → Subnets
#Confirm:

#    subnet exists
#    secondary ranges visible


#This is Subnet 1 for VPC Holland
resource "google_compute_subnetwork" "psv" {
  name                     = "psv-subnet"
  ip_cidr_range            = "192.168.0.0/24"
  region                   = "us-central1"
  network                  = google_compute_network.holland.id
  private_ip_google_access = true

  # IMPORTANT:
  # These CIDR ranges MUST NOT overlap
  # Do not modify unless you understand subnetting

  secondary_ip_range {
    range_name    = "k8s-psv-range"
    ip_cidr_range = "192.168.3.0/24"
  }

  secondary_ip_range {
    range_name    = "k8s-fenomeno-range"
    ip_cidr_range = "192.168.5.0/24"
  }

  depends_on = [
    google_compute_network.holland
  ]
}

#This is Subnet 2 for VPC Holland
resource "google_compute_subnetwork" "ajax" {
  name                     = "ajax-subnet"
  ip_cidr_range            = "192.168.2.0/24"
  region                   = "us-central1"
  network                  = google_compute_network.holland.id
  private_ip_google_access = true

  # IMPORTANT:
  # These CIDR ranges MUST NOT overlap
  # Do not modify unless you understand subnetting

  secondary_ip_range {
    range_name    = "k8s-cruyff-range"
    ip_cidr_range = "192.168.4.0/24"
  }

  secondary_ip_range {
    range_name    = "k8s-seedorf-range"
    ip_cidr_range = "192.168.6.0/24"
  }

  depends_on = [
    google_compute_network.holland
  ]
}