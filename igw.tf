resource "aws_internet_gateway" "gw" {

  vpc_id = "${aws_vpc.talkdeskvpc.id}"


  tags = {

    Name = "main"
  

}

}
