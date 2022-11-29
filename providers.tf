# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      ManagedBy = "terraform"
    }
  }
}

provider "postgresql" {
  host            = "demo-rds-postgres.c7ks221pgyez.us-east-1.rds.amazonaws.com"
  port            = 5432
  database        = "demo"
  username        = "postgres"
  password        = "postgres"
  sslmode         = "require"
  connect_timeout = 15
}
