resource "github_repository" "first_repo_test" {
  name        = "smogdog-repo"
  description = "First attempt at creating a github repo using Terraform"

  visibility = "private"

  vulnerability_alerts = true

}

resource "github_branch_protection" "example" {
  repository_id = github_repository.first_repo_test.name

  pattern          = "master"
  enforce_admins   = true
  allows_deletions = true

  required_status_checks {
    #  strict   = false
    #  contexts = ["ci/travis"]
  }

  required_pull_request_reviews {
    #  dismiss_stale_reviews  = true
    #  restrict_dismissals    = true
    #  dismissal_restrictions = [
    #    data.github_user.example.node_id,
    #    github_team.example.node_id,
    #    "/exampleuser",
    #    "exampleorganization/exampleteam",
    #  ]
  }

  push_restrictions = [
    #    data.github_user.example.node_id,
    #    "/exampleuser",
    #    "exampleorganization/exampleteam",
    # limited to a list of one type of restriction (user, team, app)
    # github_team.example.node_id
  ]

  force_push_bypassers = [
    #    data.github_user.example.node_id,
    #    "/exampleuser",
    #    "exampleorganization/exampleteam",
    # limited to a list of one type of restriction (user, team, app)
    # github_team.example.node_id
  ]

}
