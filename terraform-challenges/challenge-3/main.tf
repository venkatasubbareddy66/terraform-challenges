
variable "instance_config" {
  type = map
  default = {
    instance1 = { instance_type = "t2.micro", ami = "ami-02a2af70a66af6dfb" }
  //  instance2 = { instance_type = "t2.small", ami = "ami-02a2af70a66af6dfb" }
    instance3 = { instance_type = "t2.medium", ami = "ami-02a2af70a66af6dfb" }
  }
}


resource "aws_instance" "terraform" {
  for_each = var.instance_config
    ami = each.value.ami
    instance_type = each.value.instance_type
}

