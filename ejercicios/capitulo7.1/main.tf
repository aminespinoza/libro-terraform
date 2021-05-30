terraform {
  required_providers {
    azuredevops = {
      source  = "microsoft/azuredevops"
      version = ">=0.1.0"
    }
  }
}

provider "azuredevops" {
  org_service_url       = var.orgurl
  personal_access_token = var.pat
}

resource "azuredevops_project" "project" {
  name               = var.devopsProject
  description        = var.projectDescription
  visibility         = var.visibility
  version_control    = var.version_control
  work_item_template = var.work_item_template
}

resource "azuredevops_git_repository" "imported_repo" {
  project_id = azuredevops_project.project.id
  name       = var.repo_name
  initialization {
    init_type = "Import"
    source_type = "Git"
    source_url = "https://github.com/aminespinoza/AzureDevOpsTemplate"
  }
}

resource "azuredevops_build_definition" "build" {
  project_id = azuredevops_project.project.id
  name       = var.build_pipeline_name
  path       = "\\.azdo"

  ci_trigger {
    use_yaml = true
  }

  repository {
    repo_type   = "TfsGit"
    repo_id     = azuredevops_git_repository.imported_repo.id
    branch_name = azuredevops_git_repository.imported_repo.default_branch
    yml_path    = "azure-pipeline.yaml"
  }

  variable {
    name      = var.pipeline_variable
    value     = var.pipeline_variable_value
    is_secret = false
  }
}
