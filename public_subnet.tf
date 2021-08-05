resource "aws_subnet" "talkdesk_public" {

  vpc_id     = "${aws_vpc.talkdeskvpc.id}"

  cidr_block = "10.10.1.0/24"


  map_public_ip_on_launch = "true"

  tags = {
    Name = "talkdesk_public"
 
}
}
