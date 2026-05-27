#create a VPC network. Keep in mind that the limit is 5 VPC per project. 
resource "google_compute_network" "vpc_network" {
    name                            = "wk-10-vpc"
    auto_create_subnetworks         = false
    mtu                             = 1460
    delete_default_routes_on_create = false
}