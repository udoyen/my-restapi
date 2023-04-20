# Returns all Comments
output "all_comments" {
  value = local.json_data
}

//# Returns the title of todo
output "comments_name" {
  value = local.json_data.name
}