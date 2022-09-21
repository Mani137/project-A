# Creating VPC 
resource "aws_vpc" "manivpc" { 
 cidr_block = "192.168.0.0/16" 
  
tags = { 
 Name = "maniVPC"
} 
}
