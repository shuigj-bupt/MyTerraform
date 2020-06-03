variable "public_key_path" {
  description = <<DESCRIPTION
Path to the SSH public key to be used for authentication.
Ensure this keypair is added to your local SSH agent so provisioners can
connect.
Example: ~/.ssh/terraform.pub
DESCRIPTION
}

variable "account_profile" {
  default = "default"
}

variable "key_name" {
  description = "Desired name of AWS key pair"
}

variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "cn-northwest-1"
}

# Ubuntu Precise 12.04 LTS (x64)
variable "aws_amis" {
  type = "map"
  default = {
     cn-north-1 = "ami-070bbaf63a64f1ddc"
     cn-northwest-1 = "ami-0e21949a0d60b93e2"
  }
}
