run "valid_resources_count" {
 
  command = apply
 
  assert {
    condition = length(null_resource.tf1) == 1
    error_message = "null_resource count is not correct"
  }
}