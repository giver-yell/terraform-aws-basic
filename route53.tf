# --------------------------
# Route53
# --------------------------
resource "aws_route53_zone" "route53_zone" {
  name          = var.domain
  force_destroy = false

  tags = {
    name        = "${var.project}-${var.environment}-domain"
    project     = var.project
    environment = var.environment
  }
}

