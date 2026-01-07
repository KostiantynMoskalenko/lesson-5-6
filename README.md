We are using:
 - t3.micro instance types for CPU Node Group
 - t3.small instance types for GPU Node Group

For deployment use:

# Initialization 
terraform init

# Checking the changes to be implemented 
terraform plan

# For Deployment
terraform apply

# To configure kubectl
aws eks update-kubeconfig --region eu-north-1 --name goit-mlops-eks-cluster

#To check the deployed cluster  
kubectl get nodes
# anr/or
kubectl get pods --all-namespaces

## Important
The used IAM role must have all the necessary permissions (for VPC, EKS, S3 etc)
