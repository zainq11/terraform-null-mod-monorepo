run "valid_resources_count" {
 
  command = apply
 
  assert {
    condition     = length(null_resource.tf1) == 1
  }
}