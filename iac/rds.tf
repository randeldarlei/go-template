resource "aws_db_instance" "api_go_template" {
  allocated_storage    = 20
  db_name              = "root"
  engine               = "postgres"
  engine_version       = "13"
  instance_class       = "db.t3.micro"
  username             = "postgres"
  password             = "1234567"
  parameter_group_name = "default.postgres13"
  skip_final_snapshot  = true
}