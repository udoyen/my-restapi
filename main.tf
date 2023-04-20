provider "null" {

}
provider "restapi" {

  # Configuration options
  uri                  = "http://localhost:8000/"
  debug                = true
  write_returns_object = true

  headers = {
    "ContenType" = "Application/json"
  }

}

provider "curl" {}

module "restapi" {
  source = "./restapi"
  
}

module "curl" {
  source = "./curl"
  
}

locals {
  comments_response = module.restapi.comments_response
  comments_data = module.restapi.comments
  users_response = module.restapi.users_response
  users_data = module.restapi.users
  curl_comments = module.curl.all_comments
  curl_comments_name = module.curl.comments_name
}

# resource "null_resource" "api-data" {
#   provisioner "local-exec" {
#     when = create
#     interpreter = [
      
#     ]
#     command = ""
  
#   }
  
# }


