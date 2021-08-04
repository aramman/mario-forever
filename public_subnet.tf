resource "aws_subnet" "talkdesk_public" {

  vpc_id     = "${aws_vpc.talkdeskvpc.id}"

  cidr_block = "10.10.1.0/24"

  availability_zone = "eu-central-1a"

  map_public_ip_on_launch = "true"

  tags = {
    Name = "talkdesk_public"
 
}
}