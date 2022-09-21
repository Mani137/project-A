# Creating 1st EC2 instance in Public Subnet
resource "aws_instance" "maniinstance1" {
 ami = "ami-0568773882d492fc8"
 instance_type = "t2.micro"
 key_name = "tests"
 vpc_security_group_ids = ["${aws_security_group.manisg.id}"]
 subnet_id = "${aws_subnet.public-1.id}"
 associate_public_ip_address = true
 user_data = "${file("userdata.sh")}"
tags = {
 Name = "maniinstance1"
}
}
