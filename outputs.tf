output "sns_topic_default_arn" {
  value       = "${aws_sns_topic.sns_topic_default.arn}"
  description = "ARN of the default SNS topic"
}

output "sns_topic_high_priority_arn" {
  value       = "${aws_sns_topic.sns_topic_high_priority.arn}"
  description = "ARN of the high-priority SNS topic"
}

output "sns_topic_low_priority_arn" {
  value       = "${aws_sns_topic.sns_topic_low_priority.arn}"
  description = "ARN of the low-priority SNS topic"
}

output "sns_topic_bulk_arn" {
  value       = "${aws_sns_topic.sns_topic_bulk.arn}"
  description = "ARN of the bulk SNS topic"
}
