locals {
  default_branch = "main"
}

resource "github_repository" "shoe-bot" {
  name        = "shoe-bot"
  description = "Python web scraper CLI"
  visibility  = "public"
  // Creates the 'main' branch with a small 'README.md'
  auto_init              = true
  has_issues             = true
  has_downloads          = true
  vulnerability_alerts   = true
  allow_merge_commit     = false
  delete_branch_on_merge = true
}

// auto-init in the repo gets us this branch already.
// We could import this, but having this in here will breaks the run and
// it doesn't really do anything super useful at this point.
//
//resource "github_branch" "test_default" {
//  repository = github_repository.test.name
//  branch     = "main"
//}

resource "github_branch_default" "test_default" {
  repository = github_repository.shoe-bot.name
  branch     = local.default_branch
}

resource "github_branch_protection" "test" {
  repository_id           = github_repository.shoe-bot.node_id
  pattern                 = local.default_branch
  push_restrictions       = []
  required_linear_history = true
  require_signed_commits  = true
  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    dismissal_restrictions          = []
    require_code_owner_reviews      = false
    required_approving_review_count = 2
    restrict_dismissals             = false
  }
}
