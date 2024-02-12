resource "aws_instance" "Jenkins-master" {
  ami                    = var.ami_id
  instance_type          = var.my_instance_type
  key_name               = var.my_key
  vpc_security_group_ids = [aws_security_group.web-traffic.id]

  tags = {
    "Name" = "Jenkins-master"
  }
}
