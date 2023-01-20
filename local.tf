resource "local_file" "local" {
  filename = "exemplo.tfstate"
  content = var.conteudo
}

data "local_file" "conteudo-exemplo" {
  filename = "exemplo.tfstate"
}

output "data-source-result" {
  value = data.local_file.conteudo-exemplo.content_base64
}

variable "conteudo" {
  type = string
  default = "Hello World"
}

output "file-id" {
  value = resource.local_file.local.id
}

output "content" {
  value = var.conteudo
}

output "chicken-egg" {
  value = sort(["🥚", "🐔"])
}