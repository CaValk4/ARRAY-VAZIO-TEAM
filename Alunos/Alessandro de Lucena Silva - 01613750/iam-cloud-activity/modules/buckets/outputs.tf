output "managed_bucket_arn" {
    description = "ARN do bucket que será tratado na policy"
    value = aws_s3_bucket.bucket_files.arn
}

output "managed_bucket_id" {
    description = "ARN do bucket que será tratado na policy"
    value = aws_s3_bucket.bucket_files.id
}