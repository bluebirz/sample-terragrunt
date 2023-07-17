include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../modules//gcs"
}

locals {
  vars = read_terragrunt_config(find_in_parent_folders("env.hcl"))
}

inputs = {
  name     = "test_bucket_bbz_ss2"
  location = local.vars.locals.region
  class    = "REGIONAL"
}

# inputs = {
#   name     = "test_bucket_bbz_ss2"
#   location = env_vars.region
#   class    = "REGIONAL"
# }
