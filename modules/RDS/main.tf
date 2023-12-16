resource "aws_db_subnet_group" "default1" {
  name        = "my-db-subnet-group"
  description = "My DB Subnet Group"
  subnet_ids  = var.subnet_ids
}

resource "aws_db_instance" "default" {
  allocated_storage    = var.allocated_storage
  db_name              = var.db_name
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = var.instance_class
  username             = var.username
  password             = var.password
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  db_subnet_group_name = aws_db_subnet_group.default1.name
}
