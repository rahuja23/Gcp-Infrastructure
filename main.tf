resource "google_storage_bucket" "bucket" {
  name     = "blogpost-elt-test-bucket1"
  location = var.region
}

resource "google_storage_bucket" "gcs_bucket" {
  name     = "blogpost-elt-test-bucket2"
  location = var.region
}