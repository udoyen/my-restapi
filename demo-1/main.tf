# resource "restapi_object" "demo-1" {
#   path = "/comments"
#   data = "{ \"id\": \"1234\", \"first\": \"Foo\", \"last\": \"Bar\" }"
# }

data "restapi_object" "comments" {
  path = "/comments/"
  search_key = "id"
  search_value = "1"
}

data "restapi_object" "users" {
  path = "/users/"
  search_key = "id"
  search_value = "1"
  
}

locals {
  comm = data.restapi_object.comments.api_data
}

