resource "aws_instance" "sample_ec2_hardcoded" {
  ami           = "ami-0b72821e2f351e396"
  instance_type = "t2.micro"
  key_name      = "luqman-useast1-13072024" # change to your own keypair name
  subnet_id     = "subnet-09acf5721004f526c" # change to your own vpc subnet id
  associate_public_ip_address = true
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]

  tags = {
    Name = "luqman-webserver-terraform"
  }
}

resource "aws_instance" "sample_ec2_variables" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = data.aws_subnet.selected_subnet.id
  associate_public_ip_address = true
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]

  tags = {
    Name = var.ec2_name
  }
}