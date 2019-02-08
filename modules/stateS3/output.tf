output "theprodbucket" {
    value = "${aws_s3_bucket.prod_stateinfo.id}"
}

output "theuatbucket" {
    value = "${aws_s3_bucket.uat_stateinfo.id}"
}
output "thestgbucket" {
    value = "${aws_s3_bucket.stg_stateinfo.id}" }