Taskhawk Lambda App Terraform module
====================================

[Taskhawk](https://github.com/Automatic/taskhawk) is a replacement for celery that works on AWS SQS/SNS, while
keeping things pretty simple and straight forward. 

This module provides a custom [Terraform](https://www.terraform.io/) module for deploying Taskhawk infrastructure for 
an AWS Lambda app.

## Usage
```hcl
resource "aws_lambda_function" "dev-myFunction" {
  // ...
}

module "taskhawk-dev-myapp" {
  source             = "Automatic/taskhawk-lambda/aws"
  function           = "${aws_lambda_function.dev-myFunction.arn}"
  function_name      = "${aws_lambda_function.dev-myFunction.function_name}"
  function_qualifier = "deployed"
  name               = "dev-myapp"
  aws_region         = "us-east-1"
  aws_account_id     = "12345678"
  enable_scheduler   = true
}
```

It's recommended that `name` include your environment. 

Naming convention - lower alphanumeric and dashes only.

The SQS topic name will be prefixed by `taskhawk-`.

## Lambda Function Config

Following things are required in your Lambda function config:

Role policy should include:
```hcl
  statement {
    actions = [
      "SNS:Publish"
    ]
    resources = [
      "arn:aws:sns:<YOUR-AWS-REGION>:<YOUR-AWS-ACCOUNT>:taskhawk-<NAME>*"
    ]
  }
```

## Release Notes

[Github Releases](https://github.com/Automatic/terraform-aws-taskhawk-lambda/releases)

## How to publish

Go to [Terraform Registry](https://registry.terraform.io/modules/Automatic/taskhawk-lambda/aws), and Resync module.
