terraform {
  required_version = ">= 1.3.1, < 1.8.0"

  required_providers {
    aws = {
      source                = "hashicorp/aws"
      version               = ">= 4.23.0"
      configuration_aliases = [aws.poc_scripts_s3_region]
    }
  }
}
