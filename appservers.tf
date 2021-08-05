resource "aws_instance" "appservers" {
  count         =  2  
  ami           = var.aws_ami
  instance_type = "t2.micro"
  key_name = var.talkdesk_keypair
  security_groups = ["${aws_security_group.private.id}"]
  subnet_id = "${aws_subnet.private.id}"

  tags = {
    Name = "Appservers"
  }
}
