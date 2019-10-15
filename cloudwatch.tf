resource "aws_cloudwatch_log_group" "for_ecs" {
  name              = "/ecs/example"
  retention_in_days = 180
}

resource "aws_s3_bucket" "cloudwatch_logs" {
  bucket = "cloudwatch-logs-pragmatic-terraform-on-aws-mizzy"

  lifecycle_rule {
    enabled = true

    expiration {
      days = "180"
    }
  }
}
