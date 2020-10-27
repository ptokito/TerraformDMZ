output "Web_public_ip" {
	value = aws_instance.web.public_ip
}

output "sql_private_ip" {
	value = aws_instance.sql.private_ip
}
