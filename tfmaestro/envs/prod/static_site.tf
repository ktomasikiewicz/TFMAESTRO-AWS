module "bucket" {
  source = "../../modules/bucket/"

  bucket_name      = "tfmaestro-maintenance-page-kt1111"
  region           = "us-east-1"
  force_destroy    = true
  versioning       = true
  main_page_suffix = "index.html"
  not_found_page   = "404.html"
}

module "bucket2" {
  source = "../../modules/bucket3a/"
  bucket_name      = "tfmaestro-maintenance-page-kt2222"
  region           = "us-east-1"
  force_destroy    = true
  main_page_suffix = "index.html"
  not_found_page   = "404.html"
}
