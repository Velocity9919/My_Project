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
