# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_region_instance_template
# https://developer.hashicorp.com/terraform/language/functions/file
# Google Compute Engine: Regional Instance Template
resource "google_compute_region_instance_template" "wk-10-template" {
  name        = "wk-10-template"
  description = "wk-10-template includes colombian prize"
  region      = google_compute_subnetwork.wk-10-subnet-a.region
  # or write region argument statically as
  # region = "" (optional if provider default is set)
  machine_type = "e2-medium"


  # Create a new disk from an image and set as boot disk
  disk {
    source_image = "debian-cloud/debian-12"
    boot         = true
  }

  # Network Configurations 
  network_interface {
    subnetwork = google_compute_subnetwork.wk-10-subnet-a.id
    /*access_config {
      # Include this section to give the VM an external IP address
    } */
  }

  # service account is not *technically* needed here
  # service_account {
  #   email  = "default"
  #   scopes = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring.write", "https://www.googleapis.com/auth/pubsub", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
  # }
  tags = ["load-balanced-backend",
    "web-traffic-backend",
    "ssh-backend",
    "ping-backend",
     "http-server",
     "http-wk10",
      "ssh-wk10"]

  # Install Webserver using file() function
  metadata_startup_script = file("./startup.sh")
}
