output "jenkins" {
  value = aws_instance.jenkins.public_ip
}

output "ssh-command" {
  value = "ssh -i ./ubuntu-key.pem ubuntu@${aws_instance.jenkins.public_ip}"
}

output "private-ip" {
  value = aws_instance.jenkins.private_ip
}