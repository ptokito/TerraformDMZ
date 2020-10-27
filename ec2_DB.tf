resource "aws_instance" "sql" {
	ami           = "ami-032930428bf1abbff" 
	instance_type = "t2.micro"
	subnet_id 	  = aws_subnet.privatesubnet.id 
	
	vpc_security_group_ids = [
		aws_security_group.dbSG.id
	]
	
	tags = {
		Name = "DB"
	}
	
	
}
