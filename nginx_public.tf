resource "aws_instance" "Nginx-LB" {
  ami = "ami-05f7491af5eef733a"
  instance_type = "t2.micro"
  availability_zone ="eu-central-1a"
  subnet_id = "${aws_subnet.talkdesk_public.id}"
  key_name = var.talkdesk_keypair
  security_groups = ["${aws_security_group.public.id}"]

  tags = {
    Name = "nginx-lb"
  }
}
