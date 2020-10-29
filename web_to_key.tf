resource "null_resource" "key_update" {
  connection {
    type        = "ssh"
    user        = "terraform"
    private_key = tls_private_key.tfkey.private_key_pem
    host        = aws_instance.web.public_ip 
  }
}
