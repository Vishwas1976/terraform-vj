provider "aws"  {
    region = "${var.region}"
}

module "web" {
    source =  "../modules/singleWeb"
    user_data = "${data.template_file.user-data.rendered}"

}

module "db" {
    source =  "../modules/theRDS"
    pass = "${var.pass}"

}

data "template_file" "user-data" {
  template = "${file("user-data.sh")}"

  vars {
    server_port = "${var.server_port}"
    db_address  = "${module.db.db_address}"
    db_port     = "${module.db.db_port}"
  }
}