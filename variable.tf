#vpc variables
variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  description = "vpc cidr block"
  type        = string
}


variable "public_subnet_az1_cidr" {
  default     = "10.0.0.0/24"
  description = "public subnet az1 cidr block"
  type        = string
}

variable "public_subnet_az2_cidr" {
  default     = "10.0.1.0/24"
  description = "public subnet az2 cidr block"
  type        = string
}

variable "private_app_subnet_az1" {
  default     = "10.0.2.0/24"
  description = "private app subnet az1 cidr block"
  type        = string
}

variable "private_app_subnet_az2" {
  default     = "10.0.3.0/24"
  description = "private app subnet az2 cidr block"
  type        = string
}

variable "private_data_subnet_az1" {
  default     = "10.0.4.0/24"
  description = "private data subnet az1 cidr block"
  type        = string
}

variable "private_data_subnet_az2" {
  default     = "10.0.5.0/24"
  description = "private data subnet az2 cidr block"
  type        = string
}

#security group variables
variable "ssh_location" {
  default     = "0.0.0.0/0"
  description = "IP address that can ssh into EC2 instances"
  type        = string
}

#rds variables
#get ARN from db snapshots for default value
variable "database_snapshot_identifier" {
  default     = ""
  description = "database snapshot arn"
  type        = string
}

variable "database_instance_class" {
  default     = "db.t2.micro"
  description = "database instance type"
  type        = string
}

#get instance identifier from db snapshots for default value
variable "database_instance_identifier" {
  default     = "dev-rds-db"
  description = "database instance identifier"
  type        = string
}

variable "multi_az_deployment" {
  default     = false
  description = "create a stanby db instance"
  type        = bool
}

#application load balancer variables
#get the ARN value from the certificate manager
variable "ssl_certificate_arn" {
  default     = ""
  description = "SSL certificate arn"
  type        = string
}

#sns topic variable
variable "operator_email" {
  default     = "youremail@address.com"
  description = "email address"
  type        = string
}

#auto scaling group variables
variable "launch_template_name" {
  default     = "dev-launch-template"
  description = "name of the launch template"
  type        = string
}

variable "ec2_image_id" {
  #get ami value from ec2 instance created
  default     = "ami-value"
  description = "AMI id"
  type        = string
}

variable "ec2_instance_type" {
  default     = "t2.micro"
  description = "EC2 instance type"
  type        = string
}

variable "ec2_key_pair_name" {
  #get name of your EC2 key pairs from the console
  default     = "key"
  description = "EC2 key pairs name"
  type        = string
}

#route 53 variables
variable "domain_name" {
  #get domain name from your AWS route 53 service from the console
  default     = ""
  description = "domain name"
  type        = string
}

variable "record_name" {
  default     = "www"
  description = "sub domain name"
  type        = string
}
