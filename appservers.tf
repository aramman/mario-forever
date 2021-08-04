resource "aws_instance" "appservers" {
  count         =  2  
  ami           = "ami-05f7491af5eef733a"
  instance_type = "t2.micro"
  key_name = var.talkdesk_keypair
  security_groups = ["${aws_security_group.private.id}"]
  subnet_id = "${aws_subnet.private.id}"
  availability_zone ="eu-central-1a"

  tags = {
    Name = "Appservers"
  }
}