variable "default_tags" {
  type = map(string)
  default = {
    "env" = "waalexa"
  }
  description = "willa variables description"

}

variable "public_subnet_count" {
  type        = number
  description = "public subnet count description (optional)"
  default     = 2
}
variable "private_subnet_count" {
  type        = number
  description = "public subnet count description"
  default     = 2
}
variable "vpc_cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = "Main VPC CIDR block"
}
variable "sg_db_ingress" {
  type = map(object({
        port = number
        protocol = string
        self = bool
  }))
  default = {
    "mysql" = {
      port = 3306
      protocol = "tcp"
      self = true
   }
  }
}
variable "sg_db_egress" {
    type = map(object({
        port = number
        protocol = string
        self = bool
    }))
    default = {
    "mysql" = {
      port = 0
      protocol = "tcp"
      self = true
    }
  }
}
variable "db_credentials" {
type = map(any)
sensitive = true # will not print info to terminal
default = {
  username = "username"
  password = "password"
  }
}

