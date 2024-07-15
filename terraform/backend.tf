# Using GitLab managed TF State

terraform {
  backend "http" {
    address = "https://gitlab.com/api/v4/projects/59850044/terraform/state/gitlab-managed-terraform"
  }
}

