# Create VPC

resource "aws_vpc" "tf-vpc" {
    cidr_block = "10.0.0.0/16"
    instance_tenancy = "default"

    tags = {
      "Name" = "tf-vpc"
    }
}

# Create Subnet
# AZ - ap-southeast-2a
resource "aws_subnet" "tf-vpc-subnet-az-2a" {
  vpc_id = aws_vpc.tf-vpc.id    
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-southeast-2a"
  map_public_ip_on_launch = true

  tags = {
    "Name" = "tf-vpc-subnet-az-2a"
    "Description" = "Host the resource in Public Subnet"
  }
}

# AZ - ap-southeast-2b
resource "aws_subnet" "tf-vpc-subnet-az-2b" {
  vpc_id = aws_vpc.tf-vpc.id    
  cidr_block = "10.0.2.0/24"
  availability_zone = "ap-southeast-2b"
  map_public_ip_on_launch = false

  tags = {
    "Name" = "tf-vpc-subnet-az-2b"
    "Description" = "Host the resource in Private Subnet"
  }
}

# Create Internet Gateway
resource "aws_internet_gateway" "tf-vpc-igw" {
  vpc_id = aws_vpc.tf-vpc.id

  tags = {
    "Name" = "tf-vpc-igw"
  }
}

# Create the Route Table
resource "aws_route_table" "tf-vpc-public-rt" {
  vpc_id = aws_vpc.tf-vpc.id

  tags = {
    "Name" = "tf-vpc-public-rt"
  }
}

# Create Route in the Route Table within the Subnet
resource "" "name" {
  
}