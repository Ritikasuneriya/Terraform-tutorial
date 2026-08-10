resource "aws_vpc" "my-nat" {
    cidr_block =  "10.0.0.0/26"
    
    tags = {
      name = "my-nat"
    }
  
}

resource "aws_subnet" "public" { 
     vpc_id = aws_vpc.my-nat.id 
     cidr_block = "10.0.0.0/28"
     
     tags = {
        name = public
    
     }
}

resource "aws_subnet" "private" {
    vpc_id = aws_vpc.my-nat.id
    cidr_block = "10.0.0.33/28"
    enable

    tags = {
      name = private 
    }
}