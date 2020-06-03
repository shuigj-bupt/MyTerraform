provider "aws" {
   region = "${var.aws_region}"
   profile = "${var.account_profile}"
   version = ">=0.12.26"
}
