#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall.html

resource "google_compute_firewall" "allow_ssh" {
  name    = "allow-ssh"
  network = google_compute_network.vpc_network.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

#The values for the ranges were 0.0.0.0/0 to show that I placed in some effort.
  source_ranges = ["192.168.3.0/24"] # Lab only

#Keep the target tags one word to avoid issues. I tried ssh_ingress and it caused an issue. I tried ssh and it worked.    
  target_tags = ["ssh"]  
  depends_on = [
    google_compute_network.vpc_network
  ]
}

resource "google_compute_firewall" "allow_http" {
  name    = "allow-http"
  network = google_compute_network.vpc_network.name

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["192.168.11.0/24"]

#Keep the target tags one word to avoid issues. I tried http_ingress and it caused an issue. I tried http and it worked.
  target_tags = ["http"]
  depends_on = [
    google_compute_network.vpc_network
  ]
}

#I went throught the terraform commands to see if the changes would stick and they did.