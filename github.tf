provider "github" {
  organization = "your-github-name"
}

resource "github_repository_webhook" "example" {
  repository = "your-repository"

  configuration {
    url          = aws_codepipeline_webhook.example.url
    secret       = "VeryRnadomStringMoreThan20Byte!"
    content_type = "json"
    insecure_ssl = false
  }

  events = ["push"]
}
