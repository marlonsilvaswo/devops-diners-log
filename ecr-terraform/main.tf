provider "aws" {
  region = var.aws_region
}

resource "aws_ecr_repository" "diners_ecr_repo" {
  name = var.ecr_repo_name

  image_scanning_configuration {
    scan_on_push = true
  }
}

output "ecr_repo_url" {
  value = aws_ecr_repository.diners_ecr_repo.repository_url
}