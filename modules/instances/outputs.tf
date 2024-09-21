output "cluster_endpoint" {
  description = "API Kubernetes cluster endpoint."
  value       = google_container_cluster.primary.endpoint
}

output "node_pool_name" {
  description = "Pools' name"
  value       = google_container_node_pool.primary_nodes.name
}