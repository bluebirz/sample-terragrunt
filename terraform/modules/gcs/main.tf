resource "google_storage_bucket" "bucket_test1" {
  name          = var.name
  location      = var.location
  storage_class = var.class
}
