/* These are commeted out to prevent the individual VM from spinning up. You can uncomment this to test your startup script for functionality.
resource "google_compute_instance" "wk-10-vm" {
   name         = "wk-10-vm"
   machine_type = "e2-medium"
   zone         = "us-central1-a"
   # Inserting the target tags for the ssh and http firewall rules "ssh-wk10" & "http-wk10" are essential for the VM instance to receive traffic through the firewall. You can't reach the instance without them from the HTTP to the SSH or with the internal IP address.
   # https://stackoverflow.com/questions/64490729/how-to-enable-allow-http-traffic-allow-http-traffic-on-google-compute-engine-w
   tags         = ["http-server", "https-wk10", "http-wk10", "ssh-wk10"]

#   # Create a new disk from an image and set as boot disk
   boot_disk {
     initialize_params {
       image = "debian-cloud/debian-12"
     }
   }

#   # Network Configurations 
   network_interface {
     network = "wk-10-vpc"
     subnetwork = google_compute_subnetwork.wk-10-subnet-a.name
     access_config {
       // Ephemeral public IP
     }
   }

#   # Install Webserver using file() function
   metadata_startup_script = file("./startup.sh")

 } */