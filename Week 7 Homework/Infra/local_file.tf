resource "local_file" "food" {
  content  = "My favorite food includes: Mexican, Italian, Chinese, Mediterranean, Zanzibari, and too many to list. Mushroom Quesadillas for the win!"
  filename = "${path.module}/food.txt"
}