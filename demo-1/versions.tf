terraform {
  required_providers {
    restapi = {
      source  = "Mastercard/restapi",
      version = "1.18.0"
    }

    null = {
      source = "hashicorp/null"
      version = "3.2.1"
    }
  }
}