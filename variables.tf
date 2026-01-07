# Variables

variable "region" {
  description = "AWS region where resources will be deployed"
  type        = string
  default     = "us-east-1"
}

variable "aws_profile" {
  description = "AWS CLI profile name for authentication"
  type        = string
  default     = "User1"
}

variable "enable_cluster_private_access" {
  description = "Enable private API server endpoint"
  type        = bool
  default     = true
}

variable "enable_cluster_public_access" {
  description = "Enable public API server endpoint"
  type        = bool
  default     = true
}

variable "cluster_public_access_cidrs" {
  description = "List of CIDR blocks that can access the public API endpoint"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "cluster_admin_users" {
  description = "List of IAM user ARNs to be granted cluster admin access"
  type        = list(string)
  default     = ["arn:aws:iam::879794963746:user/User1"]
}

variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
  default     = {}
}

# Змінні для VPC модуля

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = "vpc1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "private_subnets" {
  description = "A list of private subnets inside the VPC"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.5.0/24"]
}

variable "availability_zones" {
  description = "List of availability zones in the region"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]

}

variable "public_subnets" {
  description = "List of public subnet CIDR blocks"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.6.0/24"]
}

# Variables for EKS

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "cluster1"
}

variable "cluster_version" {
  description = "Kubernetes version for the EKS cluster"
  type        = string
  default     = "1.31"
}

variable "cpu_desired_capacity" {
  description = "Desired number of instances in the CPU node group"
  type        = number
  default     = 2
}

variable "cpu_max_capacity" {
  description = "Maximum number of instances in the CPU node group"
  type        = number
  default     = 5
}

variable "cpu_min_capacity" {
  description = "Minimum number of instances in the CPU node group"
  type        = number
  default     = 2
}

variable "gpu_desired_capacity" {
  description = "Desired number of instances in the GPU node group"
  type        = number
  default     = 2
}

variable "gpu_max_capacity" {
  description = "Maximum number of instances in the GPU node group"
  type        = number
  default     = 5
}

variable "gpu_min_capacity" {
  description = "Minimum number of instances in the GPU node group"
  type        = number
  default     = 2
}