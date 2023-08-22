resource "github_repository" "first_repo_test" {
  name        = "smogdog-repo"
  description = "First attempt at creating a github repo using Terraform"

  visibility = "public"

  vulnerability_alerts = true

}

resource "github_branch_protection_v3" "master_branch_protection" {
  repository = github_repository.first_repo_test.name
  branch     = "master"

  require_signed_commits = true

  restrictions {
    users = ["foo-user"]
  }
}

