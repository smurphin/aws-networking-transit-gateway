### TRANSIT GATEWAY ###

resource "aws_ec2_transit_gateway" "enterprise_wan_tgw" {
  amazon_side_asn = var.tgw_bgp_asn
  default_route_table_propagation = "enable"
  auto_accept_shared_attachments = "enable"
  
  tags = {
    Name = "${var.environment}-${var.region}-tgw"
  }
}
