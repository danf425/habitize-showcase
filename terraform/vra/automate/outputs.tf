output "Alcon-automate_public_ip" {
  value = "${vra7_deployment.automate_machine.*.public_ip}"
}

output "a2_admin" {
 value = "${data.external.a2_secrets.result["a2_admin"]}"
}
output "a2_admin_password" {
 value = "${data.external.a2_secrets.result["a2_password"]}"
}
output "a2_token" {
 value = "${data.external.a2_secrets.result["a2_token"]}"
}
output "a2_url" {
 value = "${data.external.a2_secrets.result["a2_url"]}"
}