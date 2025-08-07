resource "google_redis_cluster" "this" {
  name               = var.name
  region             = var.region
  shard_count        = var.shard_count
  replica_count      = var.replica_count
  authorization_mode = var.authorization_mode

  psc_configs {
    network = var.network
  }

  redis_configs = var.redis_configs

  maintenance_policy {
    weekly_maintenance_window {
      day = var.maintenance_day
      start_time {
        hours   = var.maintenance_start_hour
        minutes = var.maintenance_start_minute
        seconds = 0
        nanos   = 0
      }
    }
  }

  transit_encryption_mode = var.transit_encryption_mode
}
