variable "project_id" {
  description = "The ID do projeto GCP"
  type        = string
}
variable "region" {
  description = "Region where the resource will de created"
  type        = string
}
variable "name" {
  description = "GKE cluster name"
  type        = string
}
variable "number_of_nodes" {
  description = "The initial number of nodes per cluster"
  type        = number
  default     = 2
}
variable "network" {
  description = "Network where the cluster will be allocated"
  type        = string
  default     = "default"
}
variable "machine_type" {
  description = "Machine type used to create node"
  type        = string
  default     = "e2-medium"  
}