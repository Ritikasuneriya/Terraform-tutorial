provider aws {
    region = "us-east-1"
}

# creating key-pair 

resource aws_key_pair my_key {
    key_name = "reet2"
    public_key = file("terra.pub")

}

# setting vpc

resource "aws_default_vpc" "default" {

}

# creating security group 
 
resource "aws_security_group" "terra-security" {
    name = "terra-sg"
    description = "terrafrom sg"
    vpc_id = aws_default_vpc.default.id
    
# inbound rules 
    ingress {
        from_port = 22 
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]

    }
    ingress {
      from_port = 80
      to_port = 80  
      cidr_blocks = ["0.0.0.0/0"]     
      protocol = "tcp"    
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = -1 
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        name = "terra-sg"
    }  
}

resource aws_instance my-ec2 {
       count = 2 
       ami = var.ami # ec2-instance 
       instance_type = var.instance_type 
       security_groups = [aws_security_group.terra-security.name] 
       key_name = aws_key_pair.my_key.key_name
       user_data = file("script")

       root_block_device {
          volume_size = var.root_volume_size
          volume_type = "gp3"

       }

       tags = {
         name = "reet"

       }

}