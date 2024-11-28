resource "aws_iam_policy" "s3_read_only" {
  name = "S3ReadOnlyAccess"
  description = "Permite acesso somente de leitura ao S3"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
        {
            Effect = "Allow"
            Action = ["s3:GetObject", "s3:ListBucket"]
            Resource = [
                var.bucket_files_arn,
                "${var.bucket_files_arn}/*"
            ]
        }
    ]
  })
}

resource "aws_iam_role" "ec2_s3_access_role"{
    name = "EC2S3AccessRole"
    assume_role_policy = jsonencode({
        Version = "2012-10-17"
        Statement = [
            {
                Effect = "Allow"
                Principal = {
                    Service = "ec2.amazonaws.com"
                }
                Action = "sts:AssumeRole"
            }
        ]
    })
    description = "Role para permitir que instâncias EC2 acessem o S3"
}

resource "aws_iam_role_policy_attachment" "attach_policy_to_role" {
  role = aws_iam_role.ec2_s3_access_role.name
  policy_arn = aws_iam_policy.s3_read_only.arn
}