variable "ivschat_logging_configurations" {
  description = <<EOT
Map of ivschat_logging_configurations, attributes below
Optional:
    - name
    - region
    - tags
    - tags_all
    - destination_configuration (block):
        - cloudwatch_logs (optional, block):
            - log_group_name (required)
        - firehose (optional, block):
            - delivery_stream_name (required)
        - s3 (optional, block):
            - bucket_name (required)
EOT

  type = map(object({
    name     = optional(string)
    region   = optional(string)
    tags     = optional(map(string))
    tags_all = optional(map(string))
    destination_configuration = optional(object({
      cloudwatch_logs = optional(object({
        log_group_name = string
      }))
      firehose = optional(object({
        delivery_stream_name = string
      }))
      s3 = optional(object({
        bucket_name = string
      }))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.ivschat_logging_configurations : (
        v.destination_configuration == null || (v.destination_configuration.firehose == null || (can(regex("^[0-9A-Za-z_.-]{1,64}$", v.destination_configuration.firehose.delivery_stream_name))))
      )
    ])
    error_message = "must contain only lowercase alphanumeric characters, hyphen, dot, or underscore, and between 1 and 64 characters"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

