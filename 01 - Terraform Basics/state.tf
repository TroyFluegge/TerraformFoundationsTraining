
/*
################################################################################
This first section is defining the Cloud provider that we are connecting with.
In this example the credentials for AWS are stored as environment variables and
not store in the code.  This is important to make sure sensitive credentials are 
not stored where this code will be stored.
*/

#-----Terraform Snipit-----

provider "aws" {
  version = "~> 3.0"
  region  = var.region
}

resource "aws_vpc" "hashicat" {
  cidr_block           = var.address_space
  enable_dns_hostnames = true

  tags = {
    name = "${var.prefix}-vpc-${var.region}"
  }
}

#-----Terraform Snipit-----


/*
################################################################################
Running 'terraform apply' on the "Terraform Snipit" of code in the example above
will produce a file in your local project folder with name "terraform.tfstate"
after creating the defined resources.  The contents of this file are below.  It
contains all the details of the resources that were created and currently under
management of this particular Terraform project.
*/


{
  "version": 4,
  "terraform_version": "0.13.0",
  "serial": 1,
  "lineage": "b35c1234-43ed-9b41-56ff-da3969123456",
  "outputs": {},
  "resources": [
    {
      "mode": "managed",
      "type": "aws_vpc",
      "name": "hashicat",
      "provider": "provider[\"registry.terraform.io/hashicorp/aws\"]",
      "instances": [
        {
          "schema_version": 1,
          "attributes": {
            "arn": "arn:aws:ec2:us-east-1:047038123456:vpc/vpc-0d525a92157937d88",
            "assign_generated_ipv6_cidr_block": false,
            "cidr_block": "10.0.0.0/16",
            "default_network_acl_id": "acl-0be612192f4195156",
            "default_route_table_id": "rtb-043d5425887350276",
            "default_security_group_id": "sg-0a05b95aff3d5f7c7",
            "dhcp_options_id": "dopt-0c1ed6d8de49d08d9",
            "enable_classiclink": false,
            "enable_classiclink_dns_support": false,
            "enable_dns_hostnames": true,
            "enable_dns_support": true,
            "id": "vpc-0d525a92157937d88",
            "instance_tenancy": "default",
            "ipv6_association_id": "",
            "ipv6_cidr_block": "",
            "main_route_table_id": "rtb-043d5425887350276",
            "owner_id": "047038966214",
            "tags": {
              "name": "terraform-vpc-us-east-1"
            }
          },
          "private": "iE5g6KhlbWFfdmVyc2lvbiJ4Hefi=="
        }
      ]
    }
  ]
}