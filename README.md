# Terraform
Terraform AWS Infrastructure Modules
These Terraform modules provide foundational AWS infrastructure components:

VPC (Virtual Private Cloud):
Creates a Virtual Private Cloud (VPC) to host AWS resources.
Enables DNS hostnames and supports DNS within the VPC.

Subnet:
Creates both public and private subnets.
Sets up route tables for public and private subnets.
Associates subnets with their respective route tables.

Internet Gateway:
Creates an Internet Gateway.
Associates the Internet Gateway with the VPC for internet access.

Security Groups:
Creates security groups to control inbound and outbound traffic.
Configures security group rules using CIDR blocks and security group IDs.
Associates security group rules with security groups.

EC2 (Elastic Cloud Compute):
Instances
Launches EC2 instances.
Specifies the VPC and subnet for instance placement.
Configures user data for initial instance setup.
Associates SSH key pairs for secure access.
Assigns security groups to instances.

Resource Tags:
Utilizes resource tags for auditing, tracking, and resource management.

