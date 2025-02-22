terraform {
	required_providers {
		github = {
			source = "integrations/github"
			version = "~> 6.0"
		}
	}
}

# Configure the GitHub Provider
provider "github" { token = var.github_token}

# Create a new repository
resource "github_repository" "terraform-laboratory" {
  name        = "terraform-laboratory"
  description = "Arquitectura de software 2025"
  
  # Set repository visibility
  visibility = "public"
  
}