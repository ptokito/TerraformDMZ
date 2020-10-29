resource "tls_private_key" "key1" {
	algorithm = "RSA"
	rsa_bits  = 4096
	depends_on = [
		
		aws_security_group.dbSG
	]
}


