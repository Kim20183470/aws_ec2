# Create EC2 Instance
resource "aws_instance" "terra_instance" {
  instance_type     = "t3.micro"
  availability_zone = var.az
  ami               = "ami-099b3d23e336c2e83"
  subnet_id = var.subnet_id
  key_name = var.key_pair
  tags = {
    Name = "terra_instance-bo-05"
    createdBy = "BSOP05"
  }
}
