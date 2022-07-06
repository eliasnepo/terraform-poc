resource "aws_instance" "application1" {
  count = 2
  ami = "${var.amis["us-east-1"]}"
  instance_type = "t2.micro"
  key_name = "app1-instance-${var.env}"
  tags = {
    Name = "application1-${count.index}"
  }
  vpc_security_group_ids = ["${aws_security_group.ssh-access-us-east-2.id}"]
  depends_on = ["aws_dynamodb_table.dynamodb-table"]
}

resource "aws_instance" "application2" {
  ami = "${var.amis["us-east-2"]}"
  instance_type = "t2.micro"
  key_name = "app2-instance-${var.env}"
  tags = {
    Name = "application2"
  }
  vpc_security_group_ids = ["${aws_security_group.ssh-access.id}"]
  depends_on = ["aws_s3_bucket.bucket-app"]
}