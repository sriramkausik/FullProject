output "outvpc_id" {
  value = module.VPCfrommodule.VPC_id
}

output "outsubnet_id" {
#value = "${aws_subnet.Subnetfrommodule.id}"
  value = module.Subnetfrommodule.subnet_id
}