

output "iam_role_arn" {
    value = aws_iam_role.test-lambda-function-role.arn
}