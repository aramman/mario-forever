resource "aws_vpc" "talkdeskvpc" {

  cidr_block       = "10.10.0.0/16"
  

  tags = {

    Name = "main"

}
}
