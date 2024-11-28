resource "aws_db_instance" "mysql_instance" {
  allocated_storage    = var.db_allocated_storage
  engine               = "mysql"
  engine_version       = "8.0"                # versão do MySQL
  instance_class       = var.db_instance_class
  username             = var.db_username
  password             = var.db_password
  parameter_group_name = "default.mysql8.0"   # grupo de parâmetros padrão do MySQL 8.0
  skip_final_snapshot  = true                 # evita snapshot ao deletar

  # Conectando com o grupo de segurança
  vpc_security_group_ids = [var.db_security_group_id]
  
  publicly_accessible = true # ajustável: define se o banco será acessível publicamente
  multi_az            = false # opção para uma única zona de disponibilidade
}
