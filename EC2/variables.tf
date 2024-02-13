variable "region" {
  type    = string
  default = "ap-south-1"
}

variable "access_key" {
  description = "aws access key"
  default = "AKIAZI2LFMYNNFLCPFIE"
}

variable "secret_key" {
  description = "aws secret key"
  default = "EmdtO6P6EBz4CtRUHDPuGpFe3u2Fmy5B57VJzaAX"
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

variable "my_key1" {
  description = "AWS EC2 Key pair that needs to be associated with EC2 Instance"
  type        = string
  default     = "Jenkins-master"
}

variable "my_key2" {
  description = "AWS EC2 Key pair that needs to be associated with EC2 Instance"
  type        = string
  default     = "Jenkins-slave"
}

variable "my_key3" {
  description = "AWS EC2 Key pair that needs to be associated with EC2 Instance"
  type        = string
  default     = "Sonarqube-key"
}

variable "ingressrules" {
  type    = list(number)
  default = [22, 80, 443, 8080, 8090, 9000, 8081, 2479]
}

variable "egressrules" {
  type    = list(number)
  default = [25, 80, 443, 8080, 8090, 3306, 53]
}
