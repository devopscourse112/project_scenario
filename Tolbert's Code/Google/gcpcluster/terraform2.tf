# Set the GCP provider
provider "google" {
  credentials = file("/home/socnorth/kubernetes-project/graceful-chain-420502-b7637e116a3c.json")
  project     = "graceful-chain-420502"
  region      = var.region
}

#Create GKE Cluster
resource "google_container_cluster" "default" {
  name               = "gke-standard-regional-multi-zone"
  location           = "us-west1"
  node_locations     = ["us-west1-b", "us-west1-c"]
  initial_node_count = 2

  # Set `deletion_protection` to `true` will ensure that one cannot
  # accidentally delete this instance by use of Terraform.
  deletion_protection = false
}

# Define input variables
variable "region" {
  description = "The region to deploy resources in"
  default     = "us-west1"
}                                   
