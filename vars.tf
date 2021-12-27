variable "access_key" {
     type        = string
     description = "aws access key"
}

variable "secret_key" {
    type        = string
    description = "aws secret key to login"
}

variable "region" {
   type        = string
   description = "please enter aws region"
}

variable "availabilityZone" {
    type        = string
    description = "please enter aws availability zone"
}

variable "instanceType" {
    type       = string
    description = "please enter instance type for creating an ec2 instance"
}

variable "projectName" {
    type        = string
    description = "please enter Project Name"
    default = "Dev"
}

variable "ebsType" {
   default = "gp2"
}

variable "ebsSize" {
    type        = number
    description = "please enter root-block-device volume attaching to an ec2 instance"
}
