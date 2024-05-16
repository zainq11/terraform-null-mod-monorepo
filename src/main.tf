module "child1" {
  source = "./modules/child1"
}

module "child2" {
  source = "./modules/child2"
}

resource "null_resource" "src_r1" {}
resource "null_resource" "src_r2" {}
resource "null_resource" "src_r3" {}

