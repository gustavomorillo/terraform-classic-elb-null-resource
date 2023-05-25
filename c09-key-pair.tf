resource "aws_key_pair" "test_terraform" {
  key_name   = "tf-key"
  public_key = tls_private_key.rsa.public_key_openssh
}

# RSA key of size 4096 bits
resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "local_file" {
  content  = tls_private_key.rsa.private_key_pem
  filename = "${path.module}/private-key/tf-key.pem"
}



