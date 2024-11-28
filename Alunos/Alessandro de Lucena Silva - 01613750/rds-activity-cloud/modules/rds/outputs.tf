output "db_endpoint" {
  description = "Endpoint de acesso do banco de dados"
  value = aws_db_instance.mysql_instance.endpoint
}

output "db_port" {
  description = "Porta do banco de dados"
  value = aws_db_instance.mysql_instance.port
}