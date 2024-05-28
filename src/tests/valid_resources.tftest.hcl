run "valid_resources_count" {
 
  command = apply
 
  assert {
    condition = length(null_resource) == 4
    error_message = "incorrect count of null_resource zzzz, haha 3"
  }
}