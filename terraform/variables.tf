variable "aws_region" {
  type        = string
  description = "AWS Region."
  //  default     = "us-east-2"
}

variable "app_name" {
  type        = string
  description = "UpRunningTasks"
  default     = "prenovate-infrastructure"
}

variable "app_instance" {
  type        = string
  description = "Application instance name (ie. honolulu, customer_name, department, etc.)."
  default     = "prenovate-instance"
}

variable "app_stage" {
  type        = string
  description = "Application stage (ie. dev, prod, qa, etc)."
  default     = "dev"
}

variable "global_tags" {
  type = map(string)

  default = {
    Provisioner = "Terraform"
    Owner       = "shekarau buba"
  }
}

//variable "ami" {
//  type        = string
//  description = "Default ami used in the tutorial"
//
//}


variable "access_key" {
  type        = string
  description = "Access Key"

}

variable "secret_key" {
  type        = string
  description = "Secret Access Key"
}

variable "region" {
  default = "eu-central-1"
}

variable "instance_type" {
  # Smallest recommended, where ~1.1Gb of 2Gb memory is available for the Kubernetes pods after ‘warming up’ Docker, Kubelet, and OS
  default = "t3.small"
  type    = string
}

variable "kms_key_arn" {
  default     = ""
  description = "KMS key ARN to use if you want to encrypt EKS node root volumes"
  type        = string
}

variable "open_vpn_ami" {
  description = "ami of open vpn in eu-west-2"
}

variable "keyname" {
  default = "prenovate-eu-central-1"
}

variable "aws_route53_delegation_set_reference_name" {
  description = "Name of Reusable Delegation Sets for Route 53"
}

variable "aws_route53_public" {
  description = "Route 53 for public VPC DNS"
  type        = map
}

variable "acm_arn" {

}