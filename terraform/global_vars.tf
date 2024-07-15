variable "AWS_REGION" {
    type = string
    default = "us-east-1"
}

variable "GLOBAL_ENVIRONMENT_NAME" {
  type = string
  default = "test-env"
}
variable "GLOBAL_APPLICATION_NAME" {
    type = string
    default = "Test-Lambda-Function"
}

variable "GLOBAL_APPLICATION_NAME_LOWER_CASE" {
    type = string
    default = "test-lambda-function"
  
}


variable "GLOBAL_LAMBDA_MEMORY_SIZE" {
    type = string
    default = "256"
}

variable "GLOBAL_LAMBDA_TIMEOUT" {
    type = string
    default = "600"
}

variable "GLOBAL_LAMBDA_RUNTIME" {
    type = string
    default = "python3.9"
}

variable "GLOBAL_LAMBDA_CODE_PACKAGE_FILE" {
    type = string
    default = "<PAYLOAD_FILE>.zip"
}

variable "GLOBAL_EVENT_BRIDGE_CRON_EXPRESSION" {
    type = string
    default = "cron(* * ? * 2-6 *)"
}

