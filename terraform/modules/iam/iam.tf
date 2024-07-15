


resource "aws_iam_policy" "test-lambda-function-policy" {
  name        = "${var.APPLICATION_NAME}-Policy"
  path        = "/"
  description = "My test policy"

  policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "cloudtrail:LookupEvents",
                "eks:ListNodegroups",
                "ec2:DescribeInstances",
                "ec2:DeleteTags",
                "ec2:DescribeTags",
                "ec2:CreateTags",
                "ec2:DeleteNetworkInterface",
                "ec2:Start*",
                "cloudwatch:GetMetricStatistics",
                "ec2:Stop*",
                "ec2:CreateNetworkInterface",
                "eks:DescribeNodegroup",
                "ec2:DescribeNetworkInterfaces",
                "autoscaling:DescribeAutoScalingGroups",
                "ec2:DescribeVolumes",
                "eks:DescribeCluster",
                "eks:ListClusters",
                "ec2:DescribeInstanceStatus"
            ],
            "Resource": "*"
        },
        {
            "Sid": "VisualEditor1",
            "Effect": "Allow",
            "Action": [
                "logs:CreateLogStream",
                "sns:Publish",
                "ssm:GetParameters",
                "logs:CreateLogGroup",
                "logs:PutLogEvents"
            ],
            "Resource": [
                "arn:aws:logs:*:*:*"
            ]
        }
    ]
})
}



resource "aws_iam_role" "test-lambda-function-role" {
  name = "${var.APPLICATION_NAME}-Role"
  assume_role_policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": {
                "Service": "lambda.amazonaws.com"
            },
            "Action": "sts:AssumeRole"
        }
    ]
})

}


resource "aws_iam_role_policy_attachment" "test-lambda-function-iam-policy-attachment" {
  role       = aws_iam_role.test-lambda-function-role.name
  policy_arn = aws_iam_policy.test-lambda-function-policy.arn
}