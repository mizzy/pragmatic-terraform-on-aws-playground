provider "github" {
  organization = "mizzy"
}

resource "github_repository_webhook" "example" {
  repository = "test"

  configuration {
    url          = aws_codepipeline_webhook.example.url
    secret       = "VeryRnadomStringMoreThan20Byte!"
    content_type = "json"
    insecure_ssl = false
  }

  events = ["push"]
}
