output "db_security_group_id" {
  description = "ID do grupo de segurança definido"
  value = aws_security_group.db_sg.id
}