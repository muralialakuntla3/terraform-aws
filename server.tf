# Ansible Master 
resource "aws_instance" "ans_master" {
  ami           = "ami-0763cf792771fe1bd"
  instance_type = "t3.micro"
  subnet_id = aws_subnet.ecomm-pub-sn.id
  key_name = "7am"
  vpc_security_group_ids = [aws_security_group.allow_ecomm.id]
  tags = {
    Name = "Ansible Master"
  }
}
