data "aws_ami" "windows" {
     most_recent = true

     filter {
        name   = "name"
        values = ["Windows_Server-2019-English-Full-Base-*"]

 }

     filter {
       name   = "virtualization-type"
       values = ["hvm"]

 }

     owners = ["801119661308"] # Canonical

}



resource "aws_instance" "windows" {
     ami = data.aws_ami.windows.id
     instance_type = "t2.micro"
     availability_zone = var.availability_zone

lifecycle {
     ignore_changes = [ami]
     }
 }

resource "aws_instance" "ec2Instance" {
  ami                      = data.aws_ami.windows.id
  instance_type            = var.instanceType
  availability_zone        = var.availabilityZone
  key_name                 = "${aws_key_pair.generated_key.key_name}"
root_block_device {
        volume_type  = var.ebsType
        volume_size  = var.ebsSize

}
tags = {
        Name    = "${var.projectName}-ec2-instance"
        Project = var.projectName
  }

}