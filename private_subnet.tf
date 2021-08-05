resource "aws_subnet" "private" {

  vpc_id     = "${aws_vpc.talkdeskvpc.id}"

  cidr_block = "10.10.2.0/24"


  map_public_ip_on_launch = "false"

  tags = {

    Name = "talkdesk_private"
  

}

}
