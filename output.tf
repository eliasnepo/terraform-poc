output "application1-instance1" {
  value = "${aws_instance.application1[0].public_ip}"
}

output "application2-instance1" {
  value = "${aws_instance.application2.public_ip}"
}