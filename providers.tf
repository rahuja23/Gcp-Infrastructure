provider "google" {
  project     = var.project_id
  region      = var.region
}

terraform {
  backend "gcs" {
    bucket = "blogpost-tfstate"
    prefix = "terraform/state"
  }
}