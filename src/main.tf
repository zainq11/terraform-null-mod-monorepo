module "child1" {
  source = "./modules/child1"
}

module "child2" {
  source = "./modules/child2"
}

resource "null_resource" "src_r1" {}
resource "null_resource" "src_r2" {}
resource "null_resource" "src_r3" {}
resource "null_resource" "src_r4" {}
resource "null_resource" "src_r5" {}
resource "null_resource" "src_r6" {}
resource "null_resource" "src_r7" {}
resource "null_resource" "src_r8_1_0_22" {}
resource "null_resource" "src_r9" {}
resource "null_resource" "src_r10" {}
resource "null_resource" "src_r11" {}


