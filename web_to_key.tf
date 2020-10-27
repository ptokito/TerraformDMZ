resource "null_resource" "key_update" {
  connection {
    type        = "ssh"
    user        = "terraform"
    private_key = tls_private_key.tfkey.private_key_pem
    host        = aws_instance.web.public_ip 
  }
}
 # provisioner "file" {
  #  source = ".fkey.pem"
   # destination = "C:\Users\t430\Desktop\AWS_DMZ\private_key.pem"
  #}

  #depends_on = [
    
   # null_resource.update
  #]
#}