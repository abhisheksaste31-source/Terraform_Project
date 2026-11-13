# Creating VPC
resource "aws_vpc" "myvpc" {
  cidr_block = var.vpccidr_block
}

#Creating Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.myvpc.id
}


#Creating Subnets
resource "aws_subnet" "sub1" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.sub1cidr_block
  availability_zone       = var.sub1availability_zone
  map_public_ip_on_launch = var.map_public_ip_on_launchs
}
resource "aws_subnet" "sub2" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.sub2cidr_block
  availability_zone       = var.sub2availability_zone
  map_public_ip_on_launch = var.map_public_ip_on_launchs
}

#Creating Route Tables
resource "aws_route_table" "RT" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = var.routcidr_block
    gateway_id = aws_internet_gateway.igw.id
  }
}

#Creating Subnet Association
resource "aws_route_table_association" "rta1" {
  subnet_id      = aws_subnet.sub1.id
  route_table_id = aws_route_table.RT.id
}
resource "aws_route_table_association" "rta2" {
  subnet_id      = aws_subnet.sub2.id
  route_table_id = aws_route_table.RT.id
}

#Creating Security Groups
resource "aws_security_group" "webSg" {
  name   = "web"
  vpc_id = aws_vpc.myvpc.id

  ingress {
    description = "HTTP from VPC"
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = var.protocol
    cidr_blocks = var.cidr_blocks
  }
  ingress {
    description = "SSH"
    from_port   = var.from_ports
    to_port     = var.to_ports
    protocol    = var.protocol
    cidr_blocks = var.cidr_blocks
  }

  egress {
    from_port   = var.ofrom_port
    to_port     = var.oto_port
    protocol    = "-1"
    cidr_blocks = var.cidr_blocks
  }

  tags = {
    Name = "Web-sg"
  }
}

# Creating S3 Bucket
resource "aws_s3_bucket" "example" {
  bucket = var.bucket
}


# Creating Ec2-instance with the VPC
resource "aws_instance" "webserver1" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.webSg.id]
  subnet_id              = aws_subnet.sub1.id
  user_data              = file("userdata.sh")
}

resource "aws_instance" "webserver2" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.webSg.id]
  subnet_id              = aws_subnet.sub2.id
  user_data              = file("userdata.sh")
}

#create alb
resource "aws_lb" "myalb" {
  name               = var.name
  internal           = false
  load_balancer_type = var.load_balancer_type

  security_groups = [aws_security_group.webSg.id]
  subnets         = [aws_subnet.sub1.id, aws_subnet.sub2.id]

  tags = {
    Name = "web"
  }
}

# Creating Load Balancer
resource "aws_lb_target_group" "tg" {
  name     = var.tgname
  port     = var.port
  protocol = var.tgprotocol
  vpc_id   = aws_vpc.myvpc.id

  health_check {
    path = "/index.html"
    port = "traffic-port"
  }
}

# Attaching Load Balancer
resource "aws_lb_target_group_attachment" "attach1" {
  target_group_arn = aws_lb_target_group.tg.arn
  target_id        = aws_instance.webserver1.id
  port             = 80
}

resource "aws_lb_target_group_attachment" "attach2" {
  target_group_arn = aws_lb_target_group.tg.arn
  target_id        = aws_instance.webserver2.id
  port             = 80
}

resource "aws_lb_listener" "listener" {
  load_balancer_arn = aws_lb.myalb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    target_group_arn = aws_lb_target_group.tg.arn
    type             = "forward"
  }
}
