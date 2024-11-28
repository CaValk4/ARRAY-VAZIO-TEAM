variable "nassau_vpc_id" {
  default = "vpc-02c5e7f4dcb3553a8" # Orientações para copia da VPC ID abaixo.
}

variable "nassau_subnet_public_id" {
  default = "subnet-09b9f136abb5aff73" # Orientações para copia da Subnet ID abaixo.
}

variable "security_group_allow_http_ssh_id" {
  description = "Id do grupo de segurança que permite a conexão HTTP e SSH à instância EC2"
  type = string
}

variable "ec2_instance_type"{
    description = "Tipo da instância EC2 criada"
    default = "t2.micro"
}

variable "ssh_key" {
  description = "Nome da chave ssh gerada anteriormente para ser utilizada nesta instância"
  default = "linux_aula_02"
}

