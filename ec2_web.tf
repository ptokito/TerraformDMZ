  
resource "aws_instance" "web" {
	ami           = "ami-0947d2ba12ee1ff75"
	instance_type = "t2.micro"
	subnet_id 	  = aws_subnet.publicsubnet.id 
	user_data = <<EOF
	#! /bin/bash 
    yum update -y 
    yum install httpd -y 
    service httpd start 
    chkconfig httpd on
EOF
	
	vpc_security_group_ids = [
		
		aws_security_group.webSG.id
	]
	
	tags = {
		Name = "Web"
	}
	
	depends_on = [
		
		aws_instance.sql
	]
}
