variable "instance_type" {
    default = "t3.micro"
    type = string
  
}

variable "ami" {
    default = "ami-02b64aa047cb5edf5"
    type = string
}

variable "root_volume_size" {
    default = 8
    type = number
     
  
}

