resource "openstack_networking_secgroup_rule_v2" "inbound" {
  direction = "ingress"
  ethertype = "IPv4"
  protocol = "tcp"
  remote_ip_prefix = var.remote_ip
  port_range_min = var.port
  port_range_max = var.port
  security_group_id = var.sg_id
}