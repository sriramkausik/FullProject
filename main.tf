provider "aws" {
    region =  "us-east-1"
    access_key = "AKIAWZKJDUAWZ2JIJFUL"
    secret_key = "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"
  
}

module "VPCfrommodule" {
    source = "git::https://github.com/sriramkausik/Module_VPC.git"
    cidr = var.CIDRBlock
    VPCTAG = var.VPCTAGFROMTF
  
}

module "Subnetfrommodule" {
source = "git::https://github.com/sriramkausik/Module_Subnet.git"
vpcid = module.VPCfrommodule.VPC_id
cidr = var.subnetcidr
az = var.subnetaz
subnettag = var.subnetsubnettag

}

module "Ec2" {
source = "git::https://github.com/sriramkausik/EC2.git"
ami_value = var.ami_valuee
instance_type_value = var.instance_type_valuee
subnet_id_value = module.Subnetfrommodule.subnet_id
  }
