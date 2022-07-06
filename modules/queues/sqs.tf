resource "aws_sqs_queue" "sqs_queue" {
    name = "sqs-queue"
    delay_seconds = 900
    max_message_size = 262144
    message_retention_seconds = 43200  
}

resource "aws_sqs_queue_policy" "sqs-policy" {
    policy = <<POLICY
    {
        "Version": "2012-10-17",
        "Id": "sqspolicy",
        "Statement": [
            {
                "Sid": "First",
                "Effect": "Allow",
                "Principal": "*",
                "Action": "sqs:SendMessage",
                "Resource": "${aws_sqs_topic.sqs_queue.arn}",
                "Condition": {
                    "ArnEquals": {
                        "aws:SourceArn": "${aws_sns_topic.sns_topic.arn}"
                    }
                }
            }
        ]
    }
    POLICY
}