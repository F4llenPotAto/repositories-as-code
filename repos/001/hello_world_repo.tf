resource "github_repository" "first_repo_test" {
  name        = local.github_repository_name
  description = local.github_repository_description

  visibility = "public"

  vulnerability_alerts = true

}

resource "github_branch_protection_v3" "master_branch_protection" {
  repository = github_repository.first_repo_test.name
  branch     = local.protected_main_branch_name

  require_signed_commits = true

  restrictions {
    users = local.allowed_list_of_users
  }
}

