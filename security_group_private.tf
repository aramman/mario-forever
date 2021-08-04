resource "aws_security_group" "private" {
  name        = "mario_in"
  description = "ssh allow to the mysql"
  vpc_id      = "${aws_vpc.talkdeskvpc.id}"


  ingress {
    description = "ssh"
    security_groups=[ "${aws_security_group.public.id}" ]
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
  }
  ingress {
    description = "mario_inbound"
    security_groups=[ "${aws_security_group.public.id}" ]
    from_port   = 8600
    to_port     = 8600
    protocol    = "tcp"
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }


  tags = {
    Name = "marioin"
  }
}