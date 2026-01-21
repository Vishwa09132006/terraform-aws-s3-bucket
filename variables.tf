variable "aws_region" {
  description = "AWS region to deploy to"
  default     = "us-east-1"
}

variable "bucket-from-terraform" {
  description = "Name of the S3 bucket"
  type        = string
}
