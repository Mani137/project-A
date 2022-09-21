# Creating 1st web subnet
resource "aws_subnet" "public-1" {
 vpc_id = "${aws_vpc.manivpc.id}"
 cidr_block = "192.168.100.0/24"
 map_public_ip_on_launch = true
 availability_zone = "us-east-2a"
tags = {
 Name = "public-1"
}
}
# Creating 2nd web subnet
resource "aws_subnet" "public-2" {
 vpc_id = "${aws_vpc.manivpc.id}"
 cidr_block = "192.168.200.0/24"
 map_public_ip_on_launch = true
 availability_zone = "us-east-2b"
tags = {
 Name = "public-2"
}
}

# Creating 1st application subnet 
resource "aws_subnet" "private" { 
 vpc_id = "${aws_vpc.manivpc.id}"
 cidr_block = "192.168.255.0/24" 
 map_public_ip_on_launch = false 
 availability_zone = "us-east-2a" 
tags = { 
 Name = "private" 
} 
}
