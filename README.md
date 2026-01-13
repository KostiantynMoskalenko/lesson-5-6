## Preinstallation

##### terraform:

brew install hashicorp/tap/terraform



##### kubectl:

brew install kubectl



##### AWS Profile:



Create IAM User

Generate Access Key

Attach IAM Policies:

AdministratorAccess

AmazonS3FullAccess

Configure AWS CLI profile



aws configure --profile kosmos

AWS Access Key: <received from AWS>

AWS Secret Key: <received from AWS>

Default region name: us-east-1

Default output format: json



##### Create S3 bucket for Terraform backend:



\## aws s3api create-bucket --bucket mlops-tfstate-hanna --region eu-north-1 --create-bucket-configuration LocationConstraint=eu-north-1 --profile kosmos

\## due to the region is "us-east-1" - default region:

aws s3api create-bucket --bucket mlops-tfstate-hanna --region eu-north-1 --profile kosmos





## We are using:

* t3.micro instance types for CPU Node Group
* t3.small instance types for GPU Node Group

For deployment use:

# Initialization

terraform init

# Checking the changes to be implemented

terraform plan

# For Deployment

terraform apply

# To configure kubectl

aws eks update-kubeconfig --region us-east-1 --name cluster1

# To check the deployed cluster

kubectl get nodes
#anr/or
kubectl get pods --all-namespaces

## Important

The used IAM role must have all the necessary permissions (for VPC, EKS, S3 etc)

