variable "db_name" {
  description = "Nome do banco de dados"
  default     = "mydb"
}

variable "db_username" {
  description = "Usuário do banco de dados"
  default     = "admin"
}

variable "db_password" {
  description = "Senha do banco de dados"
  default     = "mypassword123"
  sensitive   = true
}

variable "db_instance_class" {
  description = "Classe da instância do banco de dados"
  default     = "db.t3.micro" # instância básica
}

variable "db_allocated_storage" {
  description = "Armazenamento alocado para o banco de dados (em GB)"
  default     = 20
}

variable "db_security_group_id" {
  description = "Id do grupo de segurança do Banco criado"
  type = string
}