#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall.html

resource "google_compute_firewall" "allow_ssh_wk10" {
  name    = "allow-ssh-wk10"
  network = google_compute_network.vpc_network.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

#The values for the ranges were 0.0.0.0/0 to show that I placed in some effort.
  source_ranges = ["0.0.0.0/0"]
#  source_ranges = ["192.168.3.0/24"] # Lab only

#Keep the target tags one word to avoid issues. I tried ssh_ingress and it caused an issue. I tried ssh-wk10 and it worked.    
  target_tags = ["ssh-wk10"]  
  depends_on = [
    google_compute_network.vpc_network
  ]
}

resource "google_compute_firewall" "allow_http_wk10" {
  name    = "allow-http-wk10"
  network = google_compute_network.vpc_network.name

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"]
#  source_ranges = ["192.168.11.0/24"]

#Keep the target tags simple to avoid issues. I tried http_ingress and it caused an issue. I tried http-wk10 and it worked.
  target_tags = ["http-wk10"]
  depends_on = [
    google_compute_network.vpc_network
  ]
}
