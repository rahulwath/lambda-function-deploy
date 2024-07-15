

output "event_bridge_rule_arn" {
    value = aws_cloudwatch_event_rule.test-lambda-function-event-bridge.arn
}