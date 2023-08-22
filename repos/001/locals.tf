# TODO: Migrate variables from the repo to here for automation purposes.
locals {
  github_repository_name        = "terraform-generated-backstage-repo"
  github_repository_description = "Repo built by Terraform, used for hosting backstage"

  protected_main_branch_name = "master"
}
