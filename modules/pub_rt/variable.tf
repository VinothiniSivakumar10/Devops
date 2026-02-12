#Variable for public route table
variable "pub_route_cidr_block" {
  description = "this is public route cidr block"
}
variable "pub_route_name" {
  description = "this is public route name"
}
variable "vpc_id" {
  description = "this is vpc id"
}
variable "gateway_id" {
  description = "this is gateway id"
}