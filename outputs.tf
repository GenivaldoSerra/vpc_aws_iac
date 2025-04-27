output "vpc_id" {
  description = "ID da VPC"
  value       = aws_vpc.this.id
}

output "vpc_cidr_block" {
  description = "CIDR block da VPC"
  value       = aws_vpc.this.cidr_block
}