



resource "local_file" "hello" {
  content  = var.file_content
  filename = var.file_name
}
