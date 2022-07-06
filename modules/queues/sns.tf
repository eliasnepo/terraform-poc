resource "aws_sns_topic" "sns_topic" {
  name = "sns-topic"
}

resource "aws_sns_topic_subscription" "sqs_subscription_to_sns" {
  topic_arn = aws_sns_topic.sns_topic.arn
  protocol = "sqs"
  endpoint = aws_sqs_queue.sqs_queue.arn
}