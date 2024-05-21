run "valid_resources_count" {
 
  command = apply
 
  assert {
    condition     = length(resource.null_resource) == 4
  }
}