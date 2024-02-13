variable "region" {
  type    = string
  default = "ap-south-1"
}

variable "access_key" {
  description = "aws access key"
  default = "AKIAZI2LFMYNFQAJKOOP"
}

variable "secret_key" {
  description = "aws secret key"
  default = "p78rl7xbnP9aBXVXNbe/EQrwtmh0aNBptyIcELb1"
}

variable "ami_id" {
  description = "AMI for Ubuntu Ec2 instance"
  default     = "ami-03f4878755434977f"
}

variable "my_instance_type" {
  type    = string
  default = "t2.micro"
}


variable "my_key" {
  description = "AWS EC2 Key pair that needs to be associated with EC2 Instance"
  type        = string
  default     = "Ansible-key"
}

variable "ingressrules" {
  type    = list(number)
  default = [22, 80, 443, 8080, 8090, 9000, 8081, 2479]
}

variable "egressrules" {
  type    = list(number)
  default = [25, 80, 443, 8080, 8090, 3306, 53]
}
