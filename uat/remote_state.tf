
 terraform  {
    backend "s3"  {
        bucket = "531092236525-uat"
        key = "uat/terraform.tfstate"
        region = "eu-west-2"
        dynamodb_table = "theDynamodbTable"

    }
}