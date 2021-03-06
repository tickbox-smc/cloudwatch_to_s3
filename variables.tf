variable "count" {
  description = "https://github.com/hashicorp/terraform/issues/953"
  type        = "string"
  default     = 1
}

variable "compression_method" {
  description = "valid types: [ZIP, Snappy, GZIP, UNCOMPRESSED]"
  type        = "string"
  default     = "GZIP"
}

variable "logs" {
  description = "Map of logs and associated filter patterns"
  type        = "map"
}

variable "name" {
  description = "Prefix for module resource names"
  type        = "string"
  default     = "cwl"
}

variable "s3_access_uids" {
  description = "Unique IDs of users/roles granted access to S3 bucket"
  type        = "list"
}

variable "tags" {
  description = "tags"
  type        = "map"

  default = {
    "Managed" = "Terraform"
    "Name"    = "cwl"
  }
}

variable "target_bucket_arn" {
  description = "ARN of target bucket"
  type        = "string"
  default     = "0"
}

variable "target_bucket_prefix" {
  description = "Prefix for logs being sent to target bucket"
  type        = "string"
  default     = "0"
}
