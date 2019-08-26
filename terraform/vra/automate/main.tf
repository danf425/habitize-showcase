provider "vra7" {
  username = "${var.username}"
  password = "${var.password}"
  tenant   = "${var.tenant}"
  host     = "${var.host}"
  insecure = true
}

resource "vra7_deployment" "automate_machine" {
  count             = "${var.deployment_count}"
  catalog_item_name = "${var.catalog_item_name}"
  description = "${var.deployment_description}"

## newly created machine resource specifications
  resource_configuration = {
    CentosOS.cpu = "${var.cpu}"
    CentosOS.memory = "${var.memory}"
    CentosOS.storage = "${var.storage}"
#      "${var.blueprint_id}".memory = "4096"
  }

  connection {
    user        = "vagrant"
    private_key = "${file("~/ssh/vagrantdefaultkey")}"


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
    }
  }
}

# data "template_file" "deploy-chef-automate" {
#   template = "${file("${path.module}/templates/deploy-chef-automate")}"
# }