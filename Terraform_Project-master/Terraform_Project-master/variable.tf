variable "vpccidr_block" {
  type = string
}
variable "sub1cidr_block" {
  type = string
}
variable "sub1availability_zone" {
  type = string
}

variable "sub2cidr_block" {
  type = string
}
variable "sub2availability_zone" {
  type = string
}
variable "map_public_ip_on_launchs" {
  type = bool
}

variable "routcidr_block" {
  type = string
}

variable "from_port" {
  type = number
}
variable "to_port" {
  type = number
}
variable "protocol" {
  type = string
}
variable "cidr_blocks" {
  type = list(string)
}

variable "from_ports" {
  type = number
}
variable "to_ports" {
  type = number
}

variable "ofrom_port" {
  type = number
}
variable "oto_port" {
  type = number
}

variable "ami" {
  type = string
}
variable "instance_type" {
  type = string
}

variable "bucket" {
  type = string
}

variable "name" {
  type = string
}
variable "load_balancer_type" {
  type = string
}

variable "tgname" {
  type = string
}
variable "port" {
  type = number
}
variable "tgprotocol" {
  type = string
}



