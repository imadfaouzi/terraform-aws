# Define an AWS security group named "ubuntuSG"
resource "aws_security_group" "ubuntuSG" {

  # Ingress rule allowing incoming traffic on port 22 (SSH) from any IP address
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Egress rule allowing outgoing traffic on all ports to any IP address
  egress {
    from_port   = 0      # 0 = all ports
    to_port     = 0     # 0 = all ports
    protocol    = "-1" # "tcp", "udp", "icmp" "-1" (all)
    cidr_blocks = ["0.0.0.0/0"]
  }
}

