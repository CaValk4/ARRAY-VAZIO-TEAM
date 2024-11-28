output "ec2_role_arn" {
    description = "ARN da role que permite a leitura do bucket através de um EC2"
    value = aws_iam_role.ec2_s3_access_role.arn
}