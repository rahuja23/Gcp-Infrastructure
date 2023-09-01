resource "google_storage_bucket" "bucket" {
  name     = "Blogpost-ELT-test-bucket1"
  location = var.region
}

resource "google_storage_bucket" "gcs_bucket" {
  name     = "Blogpost-ELT-test-bucket2"
  location = var.region
}