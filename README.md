# Terraform Modules

[Terraform Docs](https://www.terraform.io/docs/index.html)

This is a collection of Terraform modules that I have written.

Note that a lot of these are just the base resources written as modules. This was done for 
learning purposes mostly, and before I really understood how modules (IMO should) work. A 
module is just a collection of resources. The "AWS/ec2/instance" module is a simple example 
of why you would want to use them: creating an EC2 instance with a common userdata format 
that also creates a corresponding R53 address for the instance.

The naming and tagging conventions will likely differ for environments you work in. 
Fork this and change/maintain it to fit your specific needs, plugging and placing modules 
and variables as you need (Note: nested modules are generally a bad idea). This should be 
enough to get you started pretty quickly if you need to create some modules of your own.