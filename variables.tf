variable "project_network" {
  description = "The name of your CSC project network"
  type        = string
  default     = "project_2020476"
}
variable "name_prefix" {
  description = "Prefix for resources"
  type        = string
  default     = "assignment7"
}
variable "ssh_public_key_path" {
  description = "Path to your public SSH key on your PC"
  type        = string
  default     = "~/.ssh/id_rsa.pub" # Keep this as is if you are on Mac/Linux. If on Windows, use "~/.ssh/id_ed25519.pub" or wherever your key is.
}
variable "ssh_allowed_cidr" {
  description = "Your personal IP address to allow SSH access"
  type        = string
  default     = "123.45.67.89/32" 

  validation {
    condition     = can(cidrhost(var.ssh_allowed_cidr, 0))
    error_message = "ssh_allowed_cidr must be in CIDR format, e.g. 123.45.67.89/32."
  }
}
variable "image_name" {
  description = "Linux image to use"
  type        = string
  default     = "Ubuntu-22.04"
}
variable "flavor_name" {
  description = "VM size"
  type        = string
  default     = "standard.tiny"
}
variable "student_name" {
  description = "Your name for the web page"
  type        = string
  default     = "anasaemd"
}
variable "page_message" {
  description = "Message for the web page"
  type        = string
  default     = "This is the updated version trough Experiment 1."
}