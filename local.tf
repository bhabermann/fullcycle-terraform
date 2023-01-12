resource "local_file" "local" {
  filename = "exemplo.tfstate"
  content = var.conteudo
}

variable "conteudo" {
  type = string
  default = "Hello World"
}