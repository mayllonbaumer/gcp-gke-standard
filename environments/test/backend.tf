terraform {
  backend "gcs" {
    bucket  = "programma-me-lab01-states"
    prefix  = "gcp-gke-standard/test"
  }
}
