resource "aws_route_table" "talkdesk_main" {

  vpc_id = "${aws_vpc.talkdeskvpc.id}"


  route {

    cidr_block = "0.0.0.0/0"

    gateway_id = "${aws_internet_gateway.gw.id}"

  }


   tags = {

    Name = "public route"

  }
}


resource "aws_route_table_association" "public_rt" {

  subnet_id      = aws_subnet.talkdesk_public.id
  route_table_id = aws_route_table.talkdesk_main.id
 

}