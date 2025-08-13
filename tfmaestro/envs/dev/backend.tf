terraform {
    backend "s3" {
        bucket = "terraform-kt-state-dev20250722172222254100000001"
        key = "terraform.tfstate"
        region = "eu-central-1"
    }
}