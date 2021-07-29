resource "aws_instance" "Viknesh_server" {
ami = var.ami
instance_type = var.i_type
tags = {
    Name = upper("Viknesh-app-instance")
}
}

module "s3" {
    source = "./modules/s3-module"
    bucket_name = var.bucket
    }