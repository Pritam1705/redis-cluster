output "id" {
  description = "ID of the Redis cluster"
  value       = google_redis_cluster.this.id
}


output "name" {
  description = "Name of the Redis cluster"
  value       = google_redis_cluster.this.name
}
