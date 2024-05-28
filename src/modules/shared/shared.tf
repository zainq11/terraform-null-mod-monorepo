module "global_1" {
    source = "../../../global"
}

resource "null_resource" "shared_r1" {}
resource "null_resource" "shared_r2" {}

