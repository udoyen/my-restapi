data "curl" "getComments" {
  http_method = "GET"
  uri = "http://localhost:8000/comments/1"
}

locals {
  json_data = jsondecode(data.curl.getComments.response)
}

