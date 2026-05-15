terraform {
    backend "gcs" {
        bucket = "wk9-bucket"
        prefix = "terraform/state"
    }
}
