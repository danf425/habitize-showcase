output "machine-name" {
  # note the splatting with the "*", that's how we access the list of machines
  value = ["${vra7_deployment.automate_machine.*.resource_configuration.CentosOS.name}"]
}
output "ip-address" {
  # note the splatting with the "*", that's how we access the list of machines
  value = ["${vra7_deployment.automate_machine.*.resource_configuration.CentosOS.ip_address}"]
}

output "primary-ip-address" {
  # note the splatting with the "*", that's how we access the list of machines
  value = ["${vra7_deployment.automate_machine.*.resource_configuration.CentosOS.primary_ip_address}"]
}


output "everything-hopefully" {
  # note the splatting with the "*", that's how we access the list of machines
  value = ["${vra7_deployment.automate_machine.*.resource_configuration.*}"]
}
# output "a2_admin" {
#  value = "${data.external.a2_secrets.result["a2_admin"]}"
# }
# output "a2_admin_password" {
#  value = "${data.external.a2_secrets.result["a2_password"]}"
# }
# output "a2_token" {
#  value = "${data.external.a2_secrets.result["a2_token"]}"
# }
# output "a2_url" {
#  value = "${data.external.a2_secrets.result["a2_url"]}"
# }