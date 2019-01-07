provider "aws"  {
 region = "eu-west-2"
}

resource "aws_s3_bucket" "terraform_state" {
    bucket = "vj-terraform-up"
    versioning { enabled = true}
    lifecycle { prevent_destroy = false} 

}