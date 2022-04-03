variable "aws_region" {
  default = "us-east-2"
}

variable "key_name" {
  type    = string
  default = "kkodes"
}

variable "ami" {
  type    = string
  default = "ami-03a0c45ebc70f98ea"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "kkodes_home_ip" {
  type    = string
  default = "99.155.73.200/32"
}

variable "s3_bucket" {
  type    = string
  default = "shipSafe-tf-bicket"
}

variable "acl" {
  type    = string
  default = "private"
}

variable "versioning" {
  type    = bool
  default = true
}

variable "tags" {
  type = map(any)
  default = {
    environment = "DEV"
    terraform   = "true"
    Name        = "shipSafe-dev-bucket"
  }
}
