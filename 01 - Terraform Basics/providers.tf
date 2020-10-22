/*
Providers are going to be configured with different parameters based on the
resources that it will be configurating.  Below are a few examples of what the
provider resource block would look like for your major cloud providers
*/


#-------------------------------AWS Examples------------------------------------
# AWS provider reference documentation
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs

#-----AWS Provider Example 1-----
# This setup assumes the provider is getting the require credentials and region
# settings from somewhere other then the Terraform template.  This could be via
# environment variables, credentials file or in the template directly.  Putting
# credentials directly in Terraform templates is highly discouraged

provider "aws" {}

#-----AWS Provider Example 2-----
# This example is the same as above but is setting the region to deploy too.
# The required credentials would still need to be setup via another way. 
# The additional ways to setup those credentials is mentioned in example 1

provider "aws" {
  region = "us-east-1"
}

#-----AWS Provider Example 3-----
# This example is setting the location of the credentials file that is used
# to authentication to the AWS API.  This is would be the same way that the
# AWS CLI would authenticate.  It also defines the region and the profile
# that you want to use that is setup in your credentials file

provider "aws" {
  region                  = "us-west-2"
  shared_credentials_file = "/Users/tf_user/.aws/creds"
  profile                 = "customprofile"
}

#-----AWS Provider Example 4-----

provider "aws" {
  assume_role {
    role_arn     = "arn:aws:iam::ACCOUNT_ID:role/ROLE_NAME"
    session_name = "SESSION_NAME"
    external_id  = "EXTERNAL_ID"
  }
}

#-----AWS Provider Example 5-----
# This example has all the required settings to authenticate and setup the region
# you want to use.  This is highly discouraged due to have easily these sensitive
# credentials could be stored in a share or public location.  Don't use this 
# method unless no other option is possible

provider "aws" {
  region     = "us-east-2"
  access_key = "my-access-key"
  secret_key = "my-secret-key"
}

#-------------------------------Azure Examples------------------------------------