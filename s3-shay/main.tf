provider "aws" {}
data "aws_region" "current" {}
resource "aws_s3_bucket_object" "object" {
  bucket  = "${var.bucket}"
  key     = "${var.SANDBOX_ID}.json"
  content = "[\"${var.SANDBOX_DNS}\", \"${var.item1}\", \"${var.item2}\", \"${var.item3}\", \"${data.aws_region.current.name}\"]"
}
