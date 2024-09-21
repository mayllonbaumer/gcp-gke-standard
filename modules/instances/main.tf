resource "google_container_cluster" "primary" {
  name                     = var.name
  location                 = var.region
  initial_node_count       = var.number_of_nodes
  network                  = var.network
  remove_default_node_pool = true
  node_config {
    service_account = google_service_account.gke_service_account.email
    machine_type    = var.machine_type
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
    disk_type = "pd-standard"
    disk_size_gb = 20
  }
}

resource "google_container_node_pool" "primary_nodes" {
  cluster  = google_container_cluster.primary.name
  location = google_container_cluster.primary.location

  node_count = 3

  node_config {
    service_account = google_service_account.gke_service_account.email
    machine_type    = var.machine_type
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
    disk_type = "pd-standard"
    disk_size_gb = 20 
  }

  management {
    auto_repair  = true
    auto_upgrade = true
  }
}

resource "google_compute_firewall" "default" {
  name    = "gke-firewall"
  network = var.network

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["gke-cluster"]
}
