//--------------------------------------------------------------------
// Variables
variable "vmwindow_admin_password" {}
variable "vmwindow_admin_username" {}
variable "vmwindow_client_id" {}
variable "vmwindow_client_secret" {}
variable "vmwindow_image_os" {}
variable "vmwindow_location" {}
variable "vmwindow_name" {}
variable "vmwindow_os_disk" {}
variable "vmwindow_os_simple" {}
variable "vmwindow_resource_group_name" {}
variable "vmwindow_size" {}
variable "vmwindow_subnet_id" {}
variable "vmwindow_subscription_id" {}
variable "vmwindow_tenant_id" {}
variable "vmwindow_tags" {}
variable "vmwindow_vm_count" {}
//--------------------------------------------------------------------
// Modules
module "vmwindow" {
  source  = "app.terraform.io/edj_demo_org_000/vmwindow/azurerm"
  version = "1.0.31"

  admin_password = "${var.vmwindow_admin_password}"
  admin_username = "${var.vmwindow_admin_username}"
  client_id = "${var.vmwindow_client_id}"
  client_secret = "${var.vmwindow_client_secret}"
  image_os = "${var.vmwindow_image_os}"
  vm_count = "${var.vmwindow_vm_count}"
  location = "${var.vmwindow_location}"
  name = "${var.vmwindow_name}"
  os_disk = "${var.vmwindow_os_disk}"
  os_simple = "${var.vmwindow_os_simple}"
  resource_group_name = "${var.vmwindow_resource_group_name}"
  size = "${var.vmwindow_size}"
  subnet_id = "${var.vmwindow_subnet_id}"
  subscription_id = "${var.vmwindow_subscription_id}"
  tenant_id = "${var.vmwindow_tenant_id}"
  tags = "${var.vmwindow_tags}"
}





