resource "null_resource" "update" {

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = tls_private_key.tfkey.private_key_pem
    host        = aws_instance.tfwordpress.public_ip
  }


  depends_on = [
    
    aws_instance.web
  ]
}