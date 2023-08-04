locals {
  account_id = data.aws_caller_identity.current.account_id
}

data "aws_caller_identity" "current" {}


module "ecr_test" {

  source = "../"

  providers = {
    aws = aws.virginia
  }
  create               = var.create
  name                 = var.name
  image_tag_mutability = var.image_tag_mutability
}
