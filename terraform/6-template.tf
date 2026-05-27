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
    access_config {
      # Include this section to give the VM an external IP address
      // Ephemeral public IP
    }
  }

  # service account is not *technically* needed here
  # service_account {
  #   email  = "default"
  #   scopes = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring.write", "https://www.googleapis.com/auth/pubsub", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
  # }
 
 # These tags will allow the firewall rules we created in 4-firewall.tf to function and allow traffic to the VM. If you don't, then your VMs in the MIG won't be accessible.
  tags = [
     "http-wk10",
      "ssh-wk10"]

  # Install Webserver using file() function
  metadata_startup_script = file("./startup.sh")
  #startup.sh
  #C:\Users\Shawn\Documents\TheoWAF\class7.5\GCP\Terraform\Week-10\terraform\startup.sh
}
