terraform {
    required_providers {
        random = {
            source = "hashicorp/random"
            version = "~> 3.4"
        }
    }
}  
   
variable "number" {
    type = number
    nullable = false
    default = 1
}

variable "length" {
    type = number
    nullable = false
    default = 1

    validation{
        condition = var.length > 0
        error_message = "length must be positively positive x2" 
    }
}

variable "prefixes" {
    type = list(string)
    nullable = false
    default = []
}

locals {
    prefix = length(var.prefixes) == 0? null : join("-",var.prefixes)
}

resource "random_pet" "pet" {
   count = var.number
   length = var.length
   prefix = local.prefix

   lifecycle {
    precondition {
        condition = local.prefix != ""
        error_message = "prefix can't be an empty string! hehe x3"
    }
   } 
}
output "names" {
    value = [for pet in random_pet.pet : pet.id]
}
