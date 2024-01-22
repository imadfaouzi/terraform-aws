variable "region" {
  type    = string 
  default = "eu-north-1"
}

variable "ami" {
  type    = string 
  # default = "ami-015c25ad8763b2f11" # Ubuntu 18.04
  default = "ami-0014ce3e52359afbd" # Ubuntu 
}