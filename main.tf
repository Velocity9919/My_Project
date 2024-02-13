resource "aws_instance" "AnsibleServer" {
  ami                    = var.ami_id
  instance_type          = var.my_instance_type
  key_name               = var.my_key
  vpc_security_group_ids = [aws_security_group.web-traffic.id]
  user_data              = base64encode(file("Ansible.sh"))

  tags = {
    "Name" = "Ansible-Server"
  }
}

resource "aws_instance" "Jenkins-master" {
  ami                    = var.ami_id
  instance_type          = var.my_instance_type
  key_name               = var.my_key1
  vpc_security_group_ids = [aws_security_group.web-traffic.id]

  tags = {
    "Name" = "Jenkins-master"
  }
}

resource "aws_instance" "Jenkins-slave" {
  ami                    = var.ami_id
  instance_type          = var.my_instance_type
  key_name               = var.my_key2
  vpc_security_group_ids = [aws_security_group.web-traffic.id]

  tags = {
    "Name" = "Jenkins-Slave"
  }
}

resource "aws_instance" "SonarqubeServer" {
  ami                    = var.ami_id
  instance_type          = var.my_instance_type
  key_name               = var.my_key3
  vpc_security_group_ids = [aws_security_group.web-traffic.id]

  tags = {
    "Name" = "Sonarqube-Server"
  }
}
