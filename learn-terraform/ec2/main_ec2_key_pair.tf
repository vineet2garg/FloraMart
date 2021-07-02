resource "tls_private_key" "ec2-key-pair" {
  algorithm = "RSA"
  rsa_bits = 4096
}

resource "aws_key_pair" "generate_key" {
  key_name = "ec2-key-pair"
  public_key = tls_private_key.ec2-key-pair.public_key_openssh

  provisioner "local-exec" { # Generate "ec2-key-pair.pem" in current directory
    command = "echo '${tls_private_key.ec2-key-pair.private_key_pem}' > ../ec2-key-pair.pem"
  }

}