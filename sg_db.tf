resource "aws_security_group" "dbSG" {
	name        = "dbSG"
	vpc_id      = aws_vpc.vpc.id

	ingress {
		description = "TLS from VPC"
		from_port   = 3306
		to_port     = 3306
		protocol    = "tcp"
		cidr_blocks = ["0.0.0.0/0"]
	}

	ingress {
		description = "SSH from public subnet"
		from_port   = 22
		to_port     = 22
		protocol    = "tcp"
		cidr_blocks = ["0.0.0.0/0"]
	}

	egress {
		from_port   = 0
		to_port     = 0
		protocol    = "-1"
		cidr_blocks = ["0.0.0.0/0"]
	}

	tags = {
		Name = "dbSG"
	}
	
	depends_on = [
		aws_security_group.webSG
	]
}
