# Create the VPC with minimal code. The previous terraform files have established the foundation (provider and backend) and knows that this will be associated with the saggylegumes project.
resource "google_compute_network" "vpc_network" {
    name                            = "wk9-vpc"
    auto_create_subnetworks         = false
    mtu                             = 1460
    delete_default_routes_on_create = false

}