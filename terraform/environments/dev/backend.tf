# Generated by Terragrunt. Sig: nIlQXj57tbuaRZEa
terraform {
  backend "gcs" {
    bucket = "bluebirz-terragrunt-state-dev"
    prefix = "./terragrunt.tfstate"
  }
}