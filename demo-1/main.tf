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

resource "restapi_object" "add-user" {
  path = "/users/"
  data = "{\"id\":\"4\",\"name\":\"koko\",\"username\": \"username4\",  \"email\":\"user4@example.com\"}"
  
}
