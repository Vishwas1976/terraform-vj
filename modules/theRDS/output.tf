output "db_address" {
    value = "${aws_db_instance.theDB.address}"
}

output "db_port" {
    value = "${aws_db_instance.theDB.port}"
}
