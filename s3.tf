resource "aws_s3_bucket" "terraform" {
  bucket = "${var.s3_bucket}"
  acl    = "private"

  tags {
    Name        = "${var.s3_bucket_name}"
    Environment = "${var.env}"
  }

  versioning {
    enabled = true
  }

  tags = {
        Name    = "${var.projectName}-ec2-instance"
        Project = var.projectName
        Enviroment = "${var.env}"
  }
}