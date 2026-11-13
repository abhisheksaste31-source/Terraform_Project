variable "db_instance_class" {
  type    = string
  default = "db.t3.micro"
}

variable "db_name" {
  type    = string
  default = "mydatabase"
}

variable "db_engine" {
  type    = string
  default = "postgres"
}

variable "db_engine_version" {
  type    = string
  default = "18.4"
}

variable "db_engine_pggroup" {
  type    = string
  default = "18"
}
variable "db_username" {
  type    = string
  default = "abhi"
}
variable "db_password" {
  type = string
}
variable "allocated_storage" {
  type    = number
  default = 20
}
variable "vpc_id" {
  type = string
}
variable "subnet_ids" {
  type = list(string)
}
variable "db_backup_retention_period" {
  type    = number
  default = 0
}
variable "db_backup_window" {
  type    = string
  default = "03:00-04:00"
}

variable "db_maintenance_window" {
  type    = string
  default = "sun:05:00-sun:06:00"
}
