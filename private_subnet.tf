resource "aws_subnet" "private" {

  vpc_id     = "${aws_vpc.talkdeskvpc.id}"

  cidr_block = "10.10.2.0/24"

  availability_zone = "eu-central-1a"

  map_public_ip_on_launch = "false"

  tags = {

    Name = "talkdesk_private"
  

}

}
