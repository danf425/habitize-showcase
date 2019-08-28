provider "vra7" {
  username = "${var.username}"
  password = "${var.password}"
  tenant   = "${var.tenant}"
  host     = "${var.host}"
  insecure = true
}

resource "vra7_deployment" "automate_machine" {
  catalog_item_name = "${var.catalog_item_name}"
  reasons     = "${var.deployment_description}"
  description = "${var.deployment_description}"

  count = "${var.deployment_count}"

## newly created machine resource specifications
  resource_configuration = {
    CentosOS.description = "${var.deployment_description}"
    CentosOS.cpu = "${var.cpu}"
    CentosOS.memory = "${var.memory}"
    CentosOS.storage = "${var.storage}"
    CentosOS.ip_address = ""    
    CentosOS.primary_ip_address = ""
    CentosOS.name = ""
  }

  # provisioner "local-exec" {
  #   command = "sleep 1080"
  # }
  
#getting the connection example from : https://github.com/vmware/terraform-provider-vra7/commit/75d3ada4aa1fc373863bf7ced7a972d1c44beb43
  wait_timeout      = "1800"


  # ## provision file, and run deploy-chef-automate.sh
    # provisioner "file" {
    #   content     = "${data.template_file.deploy-chef-automate.rendered}"
    #     destination = "/tmp/deploy-chef-automate.sh"
    # }
  provisioner "remote-exec" {     
    inline = [
      "sudo hostname automate-alcon.test",
          # "chmod +x /tmp/deploy-chef-automate.sh",
          # "sudo /tmp/deploy-chef-automate.sh",
    ]
    connection {
    type        = "ssh"
    host        = "${self.resource_configuration.CentosOS.name}"
    user        = "vagrant"
          # password    = "vagrant"
          # private_key works with ip address
          # host        = "${self.resource_configuration.CentosOS.primary_ip_address}"
    private_key = "${file("~/.ssh/vagrantdefaultkey")}"
    }
  }

}

# data "template_file" "deploy-chef-automate" {
#   template = "${file("${path.module}/templates/deploy-chef-automate")}"
# }