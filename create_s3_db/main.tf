
         " {
    region = "ap-south-1" 
}

resource "aws_s3_bucket" "Terraform-s3" {
  bucket = "backend-test-789988"
  force_destroy = true

  tags = {
    Name        = "My-bucket"
  }
}

resource "aws_s3_bucket_versioning" "Terraform-s3-versioning" {
  bucket = aws_s3_bucket.Terraform-s3.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_dynamodb_table" "Terraform-dynamodb" {
  name           = "terraform-dynamodb-backend"
  billing_mode   = "PROVISIONED"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name        = "backend-dynamoddb-table"
     }
}
terraform {
  backend "s3" {
    bucket         = "backend-test-789988"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
 
  }
}
aws" {
    region = "ap-south-1" 
}

resource "aws_s3_bucket" "Terraform-s3" {
  bucket = "backend-test-789988"
  force_destroy = true

  tags = {
    Name        = "My-bucket"
  }
}

resource "aws_s3_bucket_versioning" "Terraform-s3-versioning" {
  bucket = aws_s3_bucket.Terraform-s3.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_dynamodb_table" "Terraform-dynamodb" {
  name           = "terraform-dynamodb-backend"
  billing_mode   = "PROVISIONED"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name        = "backend-dynamoddb-table"
     }
}
terraform {
  backend "s3" {
    bucket         = "backend-test-789988"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
 
  }
}
