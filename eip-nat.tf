resource "aws_eip" "nat" {
vpc      = true
}

resource "aws_nat_gateway" "gw" {
  allocation_id = "${aws_eip.nat.id}"
  subnet_id     = "${aws_subnet.talkdesk_public.id}"


  tags = {
    Name = "gw NAT"
  }
}