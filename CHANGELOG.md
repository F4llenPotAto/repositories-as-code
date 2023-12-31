# Changelog

All notable changes to this project will be documented in this file.

## [unreleased]

### Bug Fixes

- Remove .terraform folder from repo
- Untrack .terraform folder
- Remove console output from Makefile
- Add terraform destroy to make commands

### Documentation

- Update README to show info on this repos purpose
- Add git cliff into repository
- Add first step to roadmap, create a github repo using Terraform
- Add changelog to repo
- Update CHANGELOG

### Features

- Deploy first github repo with makefile
- Add linting to make workflow, using tflint and terraform validate
- Add terraform fmt to make lint command
- Add tf plan and apply to makefile
- Deploy and destroy first working example of github repo as code

### Performance

- Isolate terraform version to latest patch version of 1.5.X

### Styling

- Match make command to terraform init

### Testing

- Remove deprecated github variable, private

<!-- generated by git-cliff -->
