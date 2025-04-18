provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-07a6f770277670015"
instance_type = "t2.medium"
key_name = "hasnain"
vpc_security_group_ids = ["sg-04b1640ca0c8b3900"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins","AppServer-1", "AppServer-2", "Monitoring server"]
}
