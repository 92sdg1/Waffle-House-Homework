#establishes the backend for this project including the bucket with the file type that will occupy the bucket


terraform {
    backend "gcs" {
        bucket = "wk-10"
        prefix = "terraform/state"
    }
}
