resource "aws_s3_bucket" "bucket" {
  bucket        = var.bucket_name
  force_destroy = var.force_destroy
}

resource "aws_s3_object" "image" {
  bucket       = aws_s3_bucket.bucket.bucket
  key          = "image.jpg"
  source       = "${path.module}/files/image.jpg"
  content_type = "image/jpeg"
}


