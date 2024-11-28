resource "aws_s3_bucket" "bucket_files" {
  bucket = var.managed_bucket_name

  tags = {
    Name = "bucket-managed_policies"
    Environment = "Dev"
  }
}