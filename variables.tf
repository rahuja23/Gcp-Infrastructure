variable "project_id" {
  type        = string
  description = "The Google Cloud Project Id"
}

variable "region" {
  type    = string
  default = "europe-west2"
}

variable "BQ_DATASET" {
  description = "BigQuery Dataset that raw data (from GCS) will be written to"
  type = string
  default = "bp_data_raw"
}

variable "DBT_DATASET" {
  description = "BigQuery Dataset that transformed data (from dbt) will be written to and connected to the presentation layer"
  type = string
  default = "bp_data_dbt"
}
variable "storage_class" {
  description = "Storage class type for your bucket. Check official docs for more info."
  default = "STANDARD"
}