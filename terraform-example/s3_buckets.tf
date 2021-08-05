resource "aws_s3_bucket" "aws-spyro-dev-net" {
  bucket = "aws.spyro-dev.net"
  tags = {
    Name        = "demo.aws.spyro-dev.net"
  }
   policy = <<POLICY
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "PublicReadGetObject",
            "Effect": "Allow",
            "Principal": "*",
            "Action": "s3:GetObject",
            "Resource": "arn:aws:s3:::aws.spyro-dev.net/*"
        }
    ]
}
POLICY
}
locals {
  s3_origin_id = "myS3Origin"
}
resource "aws_s3_bucket" "demo-web-logs" {
  bucket = "demo-web-logs"
  tags = {
    Name        = "demo-web-logs"
  }
}
resource "aws_s3_bucket" "demo-pipelines" {
  bucket = "demo-pipelines"
  tags = {
    Name        = "demo-pipelines"
  }
}
resource "aws_s3_bucket" "demo-patients-data" {
  bucket = "demo-patients-data"
  tags = {
    Name        = "demo-patients-data"
  }
}