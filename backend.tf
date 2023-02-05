terraform {
  backend "s3" {
    bucket = "starburn-bucket"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
