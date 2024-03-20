data "aws_ami" "amzlinux" {
  most_recent = true
  owners = [ "amazon" ]
  filter {
    name = "name"
    values = [ "amzn2-ami-hvm-*-gp2" ]
  }
  filter {
    name = "root-device-type"
    values = [ "ebs" ]
  }
  filter {
    name = "virtualization-type"
    values = [ "hvm" ]
  }
  filter {
    name = "architecture"
    values = [ "x86_64" ]
  }
}




# not recomanded 

data "aws_security_group" "dev" {
  id = "sg-0badb3fb5f00f894e" #here change your sg id details"

}
data "aws_subnet" "dev" {
  id = "subnet-03c461d1cba2b3795" #here chnage your subnet id details
}