variable "name" {
  description = "Name of the Redis cluster"
  type        = string
}

variable "region" {
  description = "Region for the Redis cluster"
  type        = string
}

variable "shard_count" {
  description = "Number of shards in the Redis cluster"
  type        = number
  default     = 3
}

variable "replica_count" {
  description = "Number of replicas per shard"
  type        = number
  default     = 1
}

variable "network" {
  description = "The full self link of the VPC network to connect to"
  type        = string
}

variable "authorization_mode" {
  description = "Authorization mode to access the Redis cluster"
  type        = string
  default     = "AUTH_MODE_DISABLED"
}

variable "redis_configs" {
  description = "Optional Redis configuration parameters"
  type        = map(string)
  default     = {}
}

variable "maintenance_day" {
  description = "Day of the week for maintenance (e.g. MONDAY)"
  type        = string
  default     = "MONDAY"
}

variable "maintenance_start_hour" {
  description = "Hour (0-23) for maintenance start"
  type        = number
  default     = 1
}

variable "maintenance_start_minute" {
  description = "Minute (0-59) for maintenance start"
  type        = number
  default     = 0
}


variable "transit_encryption_mode" {
  description = "Transit encryption mode (e.g., 'DISABLED' or 'SERVER_AUTHENTICATION')"
  type        = string
  default     = "TRANSIT_ENCRYPTION_MODE_DISABLED"
}
