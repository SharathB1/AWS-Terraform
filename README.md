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

NAT Gateway:
Allocates Elastic IPs.
Creates NAT Gateways for instances in private subnets to access the internet.
Associates NAT Gateways with public subnets.

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

Elastic Load Balancers (ELB):
Creates Elastic Load Balancers for distributing traffic.
Assigns multiple subnets and security groups.
Associates instances for load balancing.
Configures listener ports, protocols, and health checks.

Launch Configurations:
Defines Launch Configuration templates for Auto Scaling.
Specifies the AMI ID, instance type, and user data.
Associates SSH key pairs and security groups.

Autoscaling Groups:
Sets up Auto Scaling groups to manage instances dynamically.
Associates Launch Configuration templates.
Defines desired capacity, availability zones, and scaling limits.
Associates load balancers for Classic Load Balancers (ELB).

Resource Tags:
Utilizes resource tags for auditing, tracking, and resource management.


These modules simplify the provisioning and management of essential AWS infrastructure components using Terraform.