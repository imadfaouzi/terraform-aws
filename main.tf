resource "aws_instance" "ubuntu-instance" {
  ami           = var.ami
  instance_type = "t3.micro"
  key_name      = "faouzi imad" // This key pair must be created beforehand || its give you the access to the instance
  security_groups = ["${aws_security_group.ubuntuSG.name}"]

  tags = {
    Name = "Ubuntu Instance"
  }
}
