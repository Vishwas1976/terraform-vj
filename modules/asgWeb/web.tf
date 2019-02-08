
resource "aws_security_group" "sg" {
    ingress {
        from_port = "${var.theport}"
        to_port  = "${var.theport}"
        protocol  = "tcp"
        cidr_blocks=  ["0.0.0.0/0"]
    }
}

resource "aws_security_group" "sgElb" {
    ingress {
        from_port = "${var.elbPort}"
        to_port  = "${var.elbPort}"
        protocol  = "tcp"
        cidr_blocks=  ["0.0.0.0/0"]
    }
     egress {
        from_port = 0
        to_port  = 0
        protocol  = -1
        cidr_blocks=  ["0.0.0.0/0"]
    }
}

resource "aws_launch_configuration" "lc" {
    image_id = "${var.ami}"
    instance_type = "${var.instance_type}"
    security_groups = ["${aws_security_group.sg.id}"]
    lifecycle {
        create_before_destroy = true
    }
    key_name = "drvishwas"
}



resource "aws_autoscaling_group" "asg" {
    launch_configuration = "${aws_launch_configuration.lc.id}"
    min_size = 3
    max_size = 10
    tag {
        key = "name"
        value = "asg"
        propagate_at_launch = true
    }
    availability_zones = ["${data.aws_availability_zones.all.names}"]
    load_balancers = ["${aws_elb.myelb.name}"]
    health_check_type = "ELB"

}

resource "aws_elb" "myelb" {
    security_groups = ["${aws_security_group.sgElb.id}"]
    availability_zones = ["${data.aws_availability_zones.all.names}"]
    listener {
           lb_port = "${var.elbPort}"
            lb_protocol = "http"
            instance_port = "${var.theport}"
            instance_protocol  = "http"

    }
   

}

data "aws_availability_zones"  "all"  {}

