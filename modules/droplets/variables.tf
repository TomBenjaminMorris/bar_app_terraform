variable "pub_key" {}
variable "pvt_key" {}
variable "env_name" {}

variable "docker_pwd" { 
  type        = string
  sensitive   = true

  validation {
    condition = (
      length(var.docker_pwd) > 0 
    )
    error_message = "The docker_pwd can't be blank."
  }
}