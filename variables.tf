variable "aws_region" {
  type = string
}

variable "application_name" {
  type = string
}

variable "env" {
  type = string
}

variable "cluster_name" {
  type = string
}

variable "cluster_version" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "private_subnet_ids" {
  type = list(string)
}

variable "control_plane_subnet_ids" {
  type = list(string)
}

variable "platform_instance_type" {
  type = string
}

variable "platform_desired_size" {
  type = number
}

variable "platform_min_size" {
  type = number
}

variable "platform_max_size" {
  type = number
}

variable "buss_instance_type" {
  type = string
}

variable "buss_desired_size" {
  type = number
}

variable "buss_min_size" {
  type = number
}

variable "buss_max_size" {
  type = number
}
