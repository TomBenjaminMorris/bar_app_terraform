variable "do_token" {}
variable "pub_key" {}
variable "pvt_key" {}

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