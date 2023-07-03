resource "aws_security_group" "template_security_group" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.main.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["sg-"]
  }

  ingress {
    description      = "TLS from VPC"
    from_port        = 8000
    to_port          = 8000
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}

resource "aws_security_group" "rds_security_group" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.main.id

    ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "Postgres-sql"
    cidr_blocks      = ["default-security-group-id"]
  }

    tags = {
    Name = "allow_tls"
  }
}