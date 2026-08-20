module "frontend" {
  source  = "../../modules/s3-cloudfront"
  project = "teamsim"
  env     = "prod"
}

module "backend" {
  source       = "../../modules/ec2-app"
  project      = "teamsim"
  env          = "prod"
  docker_image = "teamsim/app:latest"
}
