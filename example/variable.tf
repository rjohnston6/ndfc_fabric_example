variable "inventory" {
  type = map(object({
    fabric_name : string
    switch_name : string
  }))
}

variable "username" {
  type      = string
  sensitive = true
}

variable "password" {
  type      = string
  sensitive = true
}

variable "url" {
  type = string
} 
