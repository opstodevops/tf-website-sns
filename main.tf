####################
# VARIABLES
####################

variable "aws_access_key" {}
variable "aws_secret_key" {}
# variable "private_key_path" {}
# variable "key_name" {}
# variable "admin_username" {}
# variable "admin_password" {}
variable "region" {
  default = "us-east-1"
}

####################
# PROVIDERS
####################

provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region = var.region
}

####################
# RESOURCES
####################

resource "aws_sns_topic" "user_updates" {
  name = "user-updates-topic"
}