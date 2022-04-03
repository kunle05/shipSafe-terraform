terraform {
  backend "s3" {
    bucket         = "shipSafe-tf-bucket"
    key            = "main"
    region         = "us-east-2"
    dynamodb_table = "shipSafe-dynamodb-table"
  }
}
