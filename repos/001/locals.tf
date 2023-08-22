# TODO: Migrate variables from the repo to here for automation purposes.
locals {
  github_repository_name        = "smogdog"
  github_repository_description = "github repo description here"

  protected_main_branch_name = "master"

  allowed_list_of_users = [
    "trenton",
    "sean",
    "dylan"
  ]
}
