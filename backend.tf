terraform {
  backend "s3" {
    bucket = "terraform-state-cs-task"
    key    = "terraform.tfstate"
    region = "eu-central-1"
  }
}
