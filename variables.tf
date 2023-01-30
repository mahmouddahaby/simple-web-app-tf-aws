variable "ec2-ami" {
  description = "instance ami"
}

variable "instance_type" {
  description = "ec2 type"
  type        = string
}

variable "def-region" {
  description = "the current working region"
  type        = string
}

variable "vpc-cidr" {
  description = "vpc cidr block"
}

variable "sub-cidr" {
  type = list(any)
}

variable "subnets" {
  type = list(any)
}

variable "des-all" {
  description = "all in and out"

}