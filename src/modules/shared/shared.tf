//module "global_1" {
//    source = "../../../global"
//}

module "global" {
  source  = "app.terraform.io/zaincorp/global/null"
  version = "1.0.0"
}

resource "null_resource" "shared_r1" {}
resource "null_resource" "shared_r2" {}

