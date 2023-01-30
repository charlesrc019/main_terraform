resource "github_repository" "main_terraform" {
     name = "main_terraform"
     description = "Repo for Terraform templates"
}


resource "aws_s3_bucket" "coreviz" {
  bucket = "coreviz"

  tags = {
    Name        = "Viz"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "terraform" {
  bucket = aws_s3_bucket.coreviz.id
  acl    = "private"
}

