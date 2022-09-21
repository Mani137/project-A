# Creating Internet Gateway
resource "aws_internet_gateway" "maniigw" {
 vpc_id = "${aws_vpc.manivpc.id}"
tags = {
 Name = "maniigw"
}
}
