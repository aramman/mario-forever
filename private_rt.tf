resource "aws_route_table" "talkdesk_private" {
  vpc_id = "${aws_vpc.talkdeskvpc.id}"


  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_nat_gateway.gw.id}"
  }


   tags = {
    Name = "private route"
  }
}


resource "aws_route_table_association" "private_rt" {
  subnet_id      = aws_subnet.private.id
  route_table_id = aws_route_table.talkdesk_private.id
} 