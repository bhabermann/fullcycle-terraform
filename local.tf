resource "local_file" "local" {
  filename = "exemplo.txt"
  content = var.conteudo
}

variable "conteudo" {}