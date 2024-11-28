resource "aws_security_group" "db_sg" {
  name        = "db_security_group"
  description = "Grupo de seguranca para o MySQL RDS"

  # Permissão para conexão MySQL (porta 3306)
  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # ajustável conforme sua necessidade
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
