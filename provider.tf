terraform {
  required_version = ">= 1.5"

  backend "gcs" {
    bucket = "tf-state-optical-carrier-498316-p8"
    prefix = "lab"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}