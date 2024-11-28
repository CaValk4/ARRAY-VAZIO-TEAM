module "buckets"{
    source = "./modules/buckets"

    managed_bucket_name = "bucket-test-policy"
}

module "iam" {
  source = "./modules/iam"
  
  bucket_files_arn = module.buckets.managed_bucket_arn
}