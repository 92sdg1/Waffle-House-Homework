#Chewbacca: A firewall rule so port 80 can sing to the world.
resource "google_compute_firewall" "week8hwsuccess01_allow_http" {
  name    = "week8hwsuccess01-allow-http"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"]
}



locals {
  startup_script = file("${path.module}/startup.sh")

}

#Chewbacca: The compute instance—your first reproducible node.
resource "google_compute_instance" "week8hwsuccess01" {
  name         = "week8hwsuccess01"
  machine_type = "n2-standard-2" #N series as requested
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-stream-10" #centos stream 10
      size  = 100                             #100GB
    }
  }

  network_interface {
    network = "default"

    access_config {} # External IP
  }

  metadata = {
    #Chewbacca: The banner is identity. Make it yours.
    student_name = "sdg"
  }

  metadata_startup_script = local.startup_script

  tags = ["week8hwsuccess01"]
}
