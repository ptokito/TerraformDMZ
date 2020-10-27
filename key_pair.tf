resource "tls_private_key" "key1" {
	algorithm = "RSA"
	rsa_bits  = 4096
	depends_on = [
		
		aws_security_group.dbSG
	]
}

#resource "local_file" "private-key" {
#	content         = "tls_private_key.tfkey.private_key_pem"
#	filename        = "main_key.pem" 
 #"aws_key_pair" "deployer"
#	key_name   = "key"
#	public_key = tls_private_key.tfkey.public_key_openssh
#	depends_on = [
#		tls_private_key.key1
#	]
    
#}
