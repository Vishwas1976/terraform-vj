resource "aws_db_instance"  "theDB" {
    engine = "mysql"
    allocated_storage = 10
    instance_class = "db.t2.micro"
    name = "sampleDB"
    username = "admin"
    password = "${var.pass}"
    skip_final_snapshot = true

}