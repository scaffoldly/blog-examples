variable "properties" {
  type = map(string)
}

resource "null_resource" "conditional_resource" {
  for_each = var.properties
}
