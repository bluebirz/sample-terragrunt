remote_state {
    backend = "gcs"

    generate = {
        path = "backend.tf"
        if_exists = "overwrite_terragrunt"
    }

    config = {
        project = "bluebirz-playground"
        bucket = "bluebirz-terragrunt-state-dev"
        location = "europe-west1"
        prefix = "${path_relative_to_include()}/terragrunt.tfstate"
    }
}

terraform {
    # extra_arguments "bucket" {
    #     commands = get_terraform_commands_that_need_vars()
    #     optional_var_files = [
    #         find_in_parent_folders("environments.tfvars", "ignore")
    #     ]
    # }
    # extra_arguments "env_vars" {
    #     commands = [
    #     "apply",
    #     "plan",
    #     "import",
    #     "push",
    #     "refresh"
    #     ]

    #     env_vars = {
    #         project = "bluebirz-playground"
    #         region = "europe-west1"
    #         zone = "europe-west1-b"
    #     }
    # }
}

generate "provider" {
    path = "provider.tf"
    if_exists = "overwrite_terragrunt"
    contents = <<EOF
provider "google" {
    project = "bluebirz-playground"
    region  = "europe-west1"
}
EOF
}