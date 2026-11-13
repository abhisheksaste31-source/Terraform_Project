vpccidr_block = "192.168.0.0/16"

sub1cidr_block        = "192.168.1.0/24"
sub1availability_zone = "ap-south-1a"

sub2cidr_block           = "192.168.2.0/24"
sub2availability_zone    = "ap-south-1b"
map_public_ip_on_launchs = true

routcidr_block = "0.0.0.0/0"

from_port   = 80
to_port     = 80
protocol    = "tcp"
cidr_blocks = ["0.0.0.0/0"]

from_ports = 22
to_ports   = 22

ofrom_port = 0
oto_port   = 0

ami           = "ami-04b0b8ee9ce90920a"
instance_type = "t3.micro"

bucket = "terraform-s3-test-03-project"

name               = "myalb"
load_balancer_type = "application"

tgname     = "myTG"
port       = 80
tgprotocol = "HTTP"

