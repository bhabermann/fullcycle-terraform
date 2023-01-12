resource "local_file" "local" {
  filename = "exemplo.tfstate"
  content = var.conteudo
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