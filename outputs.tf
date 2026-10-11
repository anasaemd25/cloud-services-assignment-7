output "public_ip" {
  description = "The public IP address of the web server"
  value       = openstack_networking_floatingip_v2.web.address
}
output "website_url" {
  description = "Click this link to see the live website"
  value       = "http://${openstack_networking_floatingip_v2.web.address}"
}
