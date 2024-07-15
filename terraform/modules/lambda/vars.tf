

variable "APPLICATION_NAME" {
    type = string
}

variable "LAMBDA_MEMORY_SIZE" {
    type = string
}

variable "LAMBDA_TIMEOUT" {
    type = string
}

variable "LAMBDA_RUNTIME" {
    type = string
}

# variable "LAMBDA_CODE_PACKAGE_S3_BUCKET" {
#     type = string
# }

variable "LAMBDA_CODE_PACKAGE_FILE" {
    type = string
}


variable "IAM_ROLE_ARN" {}
variable "LAMBDA_FUNCTION_ARN" {}
variable "EVENT_BRIDGE_RULE_ARN" {}
