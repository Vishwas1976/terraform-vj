provider "aws" {
     region = "eu-west-2"
}
resource  "aws_s3_bucket" "prod_stateinfo" {
    bucket = "${data.aws_caller_identity.current.account_id}-prod"
    versioning  {
    enabled = true 
    }
    lifecycle  {
     prevent_destroy = true    
    }
}
resource  "aws_s3_bucket" "uat_stateinfo" {
    bucket = "${data.aws_caller_identity.current.account_id}-uat"
    versioning  {
    enabled = true 
    }
    lifecycle  {
     prevent_destroy = true    
    }
}

resource  "aws_s3_bucket" "stg_stateinfo" {
    bucket = "${data.aws_caller_identity.current.account_id}-stg"
    versioning  {
    enabled = true 
    }
    lifecycle  {
     prevent_destroy = true    
    }
}


resource "aws_dynamodb_table" "theDynamodbTable" {
    name = "theDynamodbTable"
    hash_key =  "LockID"
    read_capacity = 20
    write_capacity = 20

    attribute {
        name = "LockID"
        type = "S"
    }

}


data "aws_caller_identity" "current" {}