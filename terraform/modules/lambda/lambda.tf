

resource "aws_lambda_function" "test-lambda-function" {
  filename = var.LAMBDA_CODE_PACKAGE_FILE
  function_name = "${var.APPLICATION_NAME}"
  role          = var.IAM_ROLE_ARN
  handler       = "lambda_function.lambda_handler"
  runtime = var.LAMBDA_RUNTIME
  memory_size = var.LAMBDA_MEMORY_SIZE
  ephemeral_storage {
    size = 512
  }
  timeout = var.LAMBDA_TIMEOUT
  

}


resource "aws_lambda_permission" "test-lambda-function-allow-invocation" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.test-lambda-function.function_name
  principal     = "events.amazonaws.com"
  source_arn    = var.EVENT_BRIDGE_RULE_ARN
}

