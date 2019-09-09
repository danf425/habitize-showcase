variable "username" {}
variable "password" {}
variable "host" {}
variable "tenant" {}
variable "catalog_item_name" {}
variable "deployment_description" {}
variable "deployment_count" {}

##### Chef Automate minimum requirements ######
variable "cpu" {
    default = 4
}
variable "memory" {
    default = 16328
}
variable "storage" {
    default = 120
}