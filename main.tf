resource "aws_instance" "jenkins" {

  ami           = "ami-0b6d9d3d33ba97d99"
  instance_type = "t3.micro"

  vpc_security_group_ids = [aws_security_group.jenkins.id]

  key_name = "ubuntu-key"

  user_data = file("jenkins.sh")

  tags = {
    Name = "Jenkins Server"
    Team = "Devops"
    env  = "Dev"
  }
}