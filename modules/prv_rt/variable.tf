#Variable for private route table
variable "prv_route_cidr_block" {
  description = "this is private route cidr block"
}

variable "prv_route_name" {
  description = "this is private route name"
}
variable "vpc_id" {
  description = "this is vpc id"
}
variable "gateway_id" {
  description = "this is gateway id"
}