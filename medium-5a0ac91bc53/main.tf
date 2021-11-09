variable "should_create" {
  type    = bool
  default = true
}

variable "properties" {
  type = map(string)
  default = {
    "foo" = "bar"
    "boo" = "baz"
  }
}

module "intermediate_module" {
  count  = var.should_create ? 1 : 0
  source = "./conditional_module"

  properties = var.properties
}
