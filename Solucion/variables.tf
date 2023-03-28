variable "region" {
  description = "region"
  default     = "us-central1"
}

variable "zone" { 
  description = "zona"
  default     = "us-central1-a"
}

variable "cluster_name" {
  description = "cluster_name"
  default     = "my-gke-cluster"
}

variable "node_pool_name" {
  description = "node_pool_name"
  default     = "nuweio"
}

variable "machine_type" {
  description = "machine_type"
  default     = "e2-medium"
}

variable "min_node_count" {
  description = "Minimo de nodos"
  default     = 1
}

variable "max_node_count" {
  description = "Maximo de nodos"
  default     = 2
}
