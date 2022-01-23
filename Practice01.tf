provider "aws"{
access_key = ""
secret_key = "" 
  region = ""

}
resource "aws_vpc" "MyautoVPC"{

    cidr_block  = "10.10.0.0/16"
tags = {
    Name= "MyautoVPC1"

}
}

resource "aws_instance" "AutoInstance" {
  ami           ="ami-08ee6644906ff4d6c"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}


