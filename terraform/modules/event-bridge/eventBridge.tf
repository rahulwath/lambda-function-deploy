

resource "aws_cloudwatch_event_rule" "test-lambda-function-event-bridge" {
  name        = "${var.APPLICATION_NAME}-EventBridge"
  description = "Capture each AWS Console Sign In"
  schedule_expression = var.EVENT_BRIDGE_CRON_EXPRESSION
  event_bus_name = "default"
}


resource "aws_cloudwatch_event_target" "test-lambda-function-event-bridge-target-attachment" {
  arn  = var.LAMBDA_FUNCTION_ARN
  rule = aws_cloudwatch_event_rule.test-lambda-function-event-bridge.id
}