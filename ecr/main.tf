# Local variables
locals {
  tags = {
    Terraform = true
  }
  create = var.create && var.name != ""
}

# ECR
resource "aws_ecr_repository" "this" {
  count                = local.create ? 1 : 0
  name                 = var.name
  image_tag_mutability = var.image_tag_mutability

  dynamic "image_scanning_configuration" {
    for_each = length(keys(var.image_scanning_configuration)) == 0 ? [] : [var.image_scanning_configuration]

    content {
      scan_on_push = image_scanning_configuration.value.scan_on_push
    }
  }

  tags = merge(
    local.tags,
    var.tags,
  )
}
