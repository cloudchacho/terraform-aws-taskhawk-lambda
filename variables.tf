variable "name" {
  description = "Application name (e.g. DEV-MYAPP); unique across your infra"
}

variable "function_arn" {
  description = "Lambda function ARN for the worker app"
}

variable "function_name" {
  description = "Lambda function name for the worker app"
}

variable "function_qualifier" {
  description = "Lambda function qualifier for the worker app, this may be used to trigger functions based on aliases"
  default     = ""
}

variable "aws_region" {
  description = "AWS Region (required if enable_scheduler is true)"
  default     = ""
}

variable "aws_account_id" {
  description = "AWS Account ID (required if enable_scheduler is true)"
  default     = ""
}

variable "enable_scheduler" {
  description = "Should Taskhawk scheduler be enabled?"
  default     = false
}
