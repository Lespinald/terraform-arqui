terraform {
	required_providers {
		github = {
			source = "integrations/github"
			version = "~> 6.0"
		}
	}
}

# Configure the GitHub Provider
provider "github" {
  organization = "myorgname"
  token        = var.token
}

# Import all module configurations
module "repository" {
  source    = "./repo"
  providers = {
    github  = "github"
  }
}

module "branches" {
  source = "./modules/branches"
  # Using the repository output as input for branches
  depends_on = [module.repository]
}

module "labels" {
  source = "./modules/labels"
  # Using the repository output as input for branches
  depends_on = [module.repository]
}