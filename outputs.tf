output "ivschat_logging_configurations_id" {
  description = "Map of id values across all ivschat_logging_configurations, keyed the same as var.ivschat_logging_configurations"
  value       = { for k, v in aws_ivschat_logging_configuration.ivschat_logging_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ivschat_logging_configurations_arn" {
  description = "Map of arn values across all ivschat_logging_configurations, keyed the same as var.ivschat_logging_configurations"
  value       = { for k, v in aws_ivschat_logging_configuration.ivschat_logging_configurations : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "ivschat_logging_configurations_destination_configuration" {
  description = "Map of destination_configuration values across all ivschat_logging_configurations, keyed the same as var.ivschat_logging_configurations"
  value       = { for k, v in aws_ivschat_logging_configuration.ivschat_logging_configurations : k => one(v.destination_configuration) if v.destination_configuration != null && length(v.destination_configuration) > 0 }
}
output "ivschat_logging_configurations_name" {
  description = "Map of name values across all ivschat_logging_configurations, keyed the same as var.ivschat_logging_configurations"
  value       = { for k, v in aws_ivschat_logging_configuration.ivschat_logging_configurations : k => v.name if v.name != null && length(v.name) > 0 }
}
output "ivschat_logging_configurations_region" {
  description = "Map of region values across all ivschat_logging_configurations, keyed the same as var.ivschat_logging_configurations"
  value       = { for k, v in aws_ivschat_logging_configuration.ivschat_logging_configurations : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ivschat_logging_configurations_state" {
  description = "Map of state values across all ivschat_logging_configurations, keyed the same as var.ivschat_logging_configurations"
  value       = { for k, v in aws_ivschat_logging_configuration.ivschat_logging_configurations : k => v.state if v.state != null && length(v.state) > 0 }
}
output "ivschat_logging_configurations_tags" {
  description = "Map of tags values across all ivschat_logging_configurations, keyed the same as var.ivschat_logging_configurations"
  value       = { for k, v in aws_ivschat_logging_configuration.ivschat_logging_configurations : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "ivschat_logging_configurations_tags_all" {
  description = "Map of tags_all values across all ivschat_logging_configurations, keyed the same as var.ivschat_logging_configurations"
  value       = { for k, v in aws_ivschat_logging_configuration.ivschat_logging_configurations : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

