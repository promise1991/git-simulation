module "frontend" {
  source  = "../../modules/s3-cloudfront"
  project = "teamsim"
  env     = "dev"
}

module "backend" {
  source       = "../../modules/ec2-app"
  project      = "teamsim"
  env          = "dev"
  docker_image = "teamsim/app:latest"
}
AWS_SECRET="AKIAIOSFODNN7EXAMPLE"
