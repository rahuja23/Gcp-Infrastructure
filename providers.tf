provider "google" {
  credentials = file("/Users/rachitahuja/Desktop/Gcp-Infrastructure/blogpost-demo-a108282c2d25.json")
  project = var.project_id
  region  = var.region
}

terraform {
  backend "gcs" {
    bucket = "blogpost-tfstate"
    prefix = "terraform/state"
  }
}