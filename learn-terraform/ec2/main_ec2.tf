# Create EC2 Instance
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance

resource "aws_instance" "my-first-ec2" {
  ami               = "ami-05064bb33b40c33a2"
  instance_type     = "t2.micro"
  availability_zone = "ap-southeast-2a"
  key_name = aws_key_pair.generate_key.key_name

  tags = {
    "Name" = "my-first-ec2"
  }
}