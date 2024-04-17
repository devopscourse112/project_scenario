# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-2"
}
variable "aws_access_key" {
  description = "AWS access key"
  sensitive = true
}

variable "aws_secret_key" {
  description = "AWS secret key"
  sensitive = true
}