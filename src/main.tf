module {
  source = "./modules/child1"
}

module {
  source = "./modules/child2"
}

resource "null_resource" "src_r1" {}
