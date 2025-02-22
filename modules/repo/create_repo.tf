resource "github_repository" "example" { 
  name = "example"
  description = "My awesome codebase"
  visibility = "public"
  template {
    owner = "github"
    repository = "terraform-template-module"
    include_all_branches = true
    }
}

resource "github_repository" "exampletest" {
  name = "example"
  description = "My awesome web page"
  private = false
  pages {
    source {
      branch = "master"
      path = "/docs"
    }
  }
}