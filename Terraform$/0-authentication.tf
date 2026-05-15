

terraform {
    required_providers {
        google = {
            source = "hashicorp/google"
            version = "5.45.2"
        }
    }
}

provider "google" {
    project = "theowaf-class75-saggylegumes"
    region = "us-central1"
    zone = "us-central1-a"
}