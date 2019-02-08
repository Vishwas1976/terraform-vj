
 terraform  {
    backend "s3"  {
        bucket = "531092236525-prod"
        key = "prod/terraform.tfstate"
        region = "eu-west-2"
        dynamodb_table = "theDynamodbTable"

    }
}

data "template_file" "user_data" {
  template = "${file("user-data.sh")}"

  vars {
    server_port = "${var.server_port}"
    db_address  = "${module.db.address}"
    db_port     = "${module.db.port}"
  }
}