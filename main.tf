# Data Lake Bucket
# Ref: https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket
locals {
  data_lake_bucket = "blogpost_data_lake"
}
resource "google_storage_bucket" "data-lake-bucket" {
  name          = "${local.data_lake_bucket}" # Concatenating DL bucket & Project name for unique naming
  location      = var.region

  # Optional, but recommended settings:
  storage_class = var.storage_class
  uniform_bucket_level_access = true

  versioning {
    enabled     = true
  }

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 30  // days
    }
  }

  force_destroy = true
}

# DWH
# Ref: https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/bigquery_dataset
resource "google_bigquery_dataset" "bp_data_raw" {
  dataset_id = var.BQ_DATASET
  project    = var.project_id
  location   = var.region
}

resource "google_bigquery_dataset" "bp_data_dbt" {
  dataset_id = var.DBT_DATASET
  project    = var.project_id
  location   = var.region
}