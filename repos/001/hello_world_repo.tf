resource "github_repository" "first_repo_test" {
  name        = "smogdog-repo"
  description = "First attempt at creating a github repo using Terraform"

  visibility = "public"

}
