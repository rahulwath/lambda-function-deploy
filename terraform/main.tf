

module "iam" {
    source = "./modules/iam"
    APPLICATION_NAME = var.GLOBAL_APPLICATION_NAME

    IAM_ROLE_ARN = module.iam.iam_role_arn

}


module "lambda" {
    source = "./modules/lambda"
    APPLICATION_NAME = var.GLOBAL_APPLICATION_NAME
    LAMBDA_MEMORY_SIZE = var.GLOBAL_LAMBDA_MEMORY_SIZE
    LAMBDA_TIMEOUT = var.GLOBAL_LAMBDA_TIMEOUT
    LAMBDA_RUNTIME = var.GLOBAL_LAMBDA_RUNTIME
    LAMBDA_CODE_PACKAGE_FILE = var.GLOBAL_LAMBDA_CODE_PACKAGE_FILE

    IAM_ROLE_ARN = module.iam.iam_role_arn
    LAMBDA_FUNCTION_ARN = module.lambda.lambda_function_arn
    EVENT_BRIDGE_RULE_ARN = module.event-bridge.event_bridge_rule_arn

}


module "event-bridge" {
    source = "./modules/event-bridge"
    APPLICATION_NAME = var.GLOBAL_APPLICATION_NAME
    EVENT_BRIDGE_CRON_EXPRESSION = var.GLOBAL_EVENT_BRIDGE_CRON_EXPRESSION

    LAMBDA_FUNCTION_ARN = module.lambda.lambda_function_arn
    EVENT_BRIDGE_RULE_ARN = module.event-bridge.event_bridge_rule_arn

}
