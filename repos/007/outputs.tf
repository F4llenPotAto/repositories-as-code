output "repo_information" {
  value = {
    full_name      = github_repository.this.full_name,
    repo_id        = github_repository.this.repo_id,
    html_url       = github_repository.this.html_url,
    ssh_clone_url  = github_repository.this.ssh_clone_url,
    http_clone_url = github_repository.this.http_clone_url,
    git_clone_url  = github_repository.this.git_clone_url,
  }
}
