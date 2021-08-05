resource "aws_instance" "Nginx-LB" {
  ami = var.aws_ami
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.talkdesk_public.id}"
  key_name = var.talkdesk_keypair
  security_groups = ["${aws_security_group.public.id}"]

  tags = {
    Name = "nginx-lb"
  }
}
