resource "github_repository" "this" {
  name        = local.github_repository_name
  description = local.github_repository_description

  visibility = "public"

  vulnerability_alerts = true

}

resource "github_branch_protection" "master_branch_protection" {
  repository_id = github_repository.this.name
  pattern       = local.protected_main_branch_name

  require_signed_commits = true
}

resource "github_branch" "development" {
  repository = resource.github_repository.this
  branch     = "dev"
}

resource "github_branch" "production" {
  repository = resource.github_repository.this
  branch     = "prod"
}
