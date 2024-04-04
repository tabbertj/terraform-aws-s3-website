
# WARNING: Generated module tests should be considered experimental and be reviewed by the module author.

run "variables" {
  assert {
    condition     = var.bucket_name == "test-bucket"
    error_message = "Bucket name variable does not match the expected value."
  }

  assert {
    condition     = var.tags == {
      "Environment" = "Test"
      "Owner" = "Terraform"
    }
    error_message = "Tags variable does not match the expected value."
  }
}
