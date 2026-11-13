terraform {
  backend "s3" {
    bucket       = "terraform-statefile-reyaz-03"
    key          = "prod/terraform.tfsate"
    encrypt      = true
    use_lockfile = true

    region = "ap-south-1"
  }
}
~
