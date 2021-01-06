

resource "aws_security_group" "worker_group_mgmt_one" {
  name_prefix = "worker_group_mgmt_one"
  vpc_id      = module.bookstore-vpc.vpc_id

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"

    cidr_blocks = [
      "10.0.0.0/8",
    ]
  }

  //  ingress {
  //    from_port       = 0
  //    protocol        = "-1"
  //    to_port         = 0
  //    security_groups = ["sg-09ea8221e0b421290"]
  //    cidr_blocks     = ["0.0.0.0/0"]
  //
  //  }
}

resource "aws_security_group" "worker_group_mgmt_two" {
  name_prefix = "worker_group_mgmt_two"
  vpc_id      = module.bookstore-vpc.vpc_id

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"

    cidr_blocks = [
      "192.168.0.0/16",
    ]
  }
  //  ingress {
  //    from_port       = 0
  //    protocol        = "-1"
  //    to_port         = 0
  //    security_groups = ["sg-09ea8221e0b421290"]
  //    cidr_blocks     = ["0.0.0.0/0"]
  //
  //  }
}

resource "aws_security_group" "all_worker_mgmt" {
  name_prefix = "all_worker_management"
  vpc_id      = module.bookstore-vpc.vpc_id

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"

    cidr_blocks = [
      "10.0.0.0/8",
      "172.16.0.0/12",
      "192.168.0.0/16",
    ]
  }
}

# OpenVPN Security Groups

resource "aws_security_group" "vpn_access_server" {
  name        = "tf-sg-vpn-access-server"
  description = "Security group for VPN access server"
  vpc_id      = module.bookstore-vpc.vpc_id

  tags = {
    Name = "tf-sg-vpn-access-server"
  }

  ingress {
    protocol    = "tcp"
    from_port   = 22
    to_port     = 22
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    protocol    = "tcp"
    from_port   = 943
    to_port     = 943
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    protocol    = "tcp"
    from_port   = 443
    to_port     = 443
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    protocol    = "udp"
    from_port   = 1194
    to_port     = 1194
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    protocol    = "-1"
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}