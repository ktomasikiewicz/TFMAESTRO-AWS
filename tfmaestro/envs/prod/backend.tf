terraform {
    backend "s3" {
        bucket = "terraform-kt-state-prod20250722172808796600000001"
        key = "terraform.tfstate"
        region = "eu-central-1"
    }
}