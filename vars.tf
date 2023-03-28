variable "default_tags" {
  type = map(string)
  default = {
    "env" = "Willa"
  }
  description = "willa variables description"

}

variable "public_subnet_count" {
    type = number
    description = "public subnet count description (optional)"
    default = 2
}