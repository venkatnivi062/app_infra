output "ec2_public_ip" {
  value = module.ec2.ec2_public_ip
}
output "s3_bucket_id" {
    value = module.aws_s3_bucket.sample_bucket.id
}
output "s3_bucket_arn" {
    value = module.aws_s3_bucket.sample_bucket.arn
}
