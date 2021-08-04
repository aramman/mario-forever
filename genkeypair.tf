
resource "tls_private_key" "dev_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "generated_key" {
  key_name   = var.talkdesk_keypair
  public_key = tls_private_key.dev_key.public_key_openssh

  provisioner "local-exec" {    # Generate "terraform-key-pair.pem" in current directory
    command = "echo '${tls_private_key.dev_key.private_key_pem}' > files/'${var.talkdesk_keypair}'.pem"
  }

  provisioner "local-exec" {
    command = "chmod 400 files/'${var.talkdesk_keypair}'.pem"
  }
}
