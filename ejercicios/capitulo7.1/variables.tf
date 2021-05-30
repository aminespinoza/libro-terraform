#Credentials structure
variable "orgurl" {
  type        = string
  description = "Azure DevOps organization url"
}

variable "pat" {
  type        = string
  description = "Personal access token from Azure DevOps"
}

#Devops project name
variable "devopsProject" {
  type        = string
  description = "Name of the upcoming project"
}

variable "projectDescription" {
  type        = string
  description = "Description of the project"
}

variable "visibility" {
  type        = string
  description = "Could be public or private"
}

#Repository information
variable "version_control" {
  type        = string
  description = "Is there any other than Git?"
}

variable "work_item_template" {
  type        = string
  description = "Scrum, Agile or Basic"
}

variable "repo_name" {
  type        = string
  description = "Name of the DevOps repository"
}

#Build pipeline
variable "build_pipeline_name" {
  type        = string
  description = "Name of the build pipeline"
}

variable "pipeline_variable" {
  type        = string
  description = "Sample variable in the pipeline"
}

variable "pipeline_variable_value" {
  type        = string
  description = "Desired value put in the variable"
}