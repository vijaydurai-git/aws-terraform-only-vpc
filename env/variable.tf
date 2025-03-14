#Enter Project Name
variable "current_project_tag" {
  description = "Note: The current project tag"
}

variable "ip_range" {
  description = "Enter the third octet (e.g., '0.0.third_octet.0/0') to allow flexibility in subnet allocation."
}

variable "do_you_want_nat_gateway" {
  type = bool
}
