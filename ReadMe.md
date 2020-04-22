# Python Environment Project


## This is a repo for the Python Environment Project:

### What was the Task

- The task was to create a development, testing and production environment for an app and the Jenkins pipeline for it.
- I had to use the code to create a VM.
- Use the VM and Chef to make a chef provision.
- From the Chef Provision use this to create an AMI using a packer.json file. And packer.

### What Did I do?

- Firstly I created the VM using shell provisioning. - This allows you to access the machine locally.
- Upon completion I created an AMI, Which has Packer, Chef and Java. (Allows me to use it as a SlaveNode or a Jenkins Master)
- Using the AmI I created 3 instances 1 for Jenkins and the other as slave nodes. The security groups for this were setup,  for my home IP, GitHub Access and for the SlaveNode. This in conjunction with the NACL’s created as well.
- I created a Jenkins CI/CD Pipeline which builds and AMI when there is a Successful Git pull-request and this starts the job that builds the AMI.
- Using the new AMI I launched an instance which allows me to test to see if the app works.

##Cookbooks

- I used two cookbooks, one provisions an empty-dev environment, the second provision a test environment with Packer, Java and Chef.
1 - https://github.com/victorsibanda/PythonDevEnvCookbook
2 - https://github.com/victorsibanda/ChefPackerAMICookbook



#### Python Dev Environment Using Vagrant
- https://github.com/victorsibanda/dev_env_vm
- Using a simple VM with vagrant to test the code locally.

#### IT Jobs Forked Repository
- https://github.com/victorsibanda/It_Jobs_Watch_Data_Package
- This is the code used for this application


## The project was completed using AWS in which I made a slave node and CI/CD Pipeline


- I created 3 EC2s on Amazon AWS, using two as slave nodes and one as a master for Jenkins.
- I then downloaded Jenkins to the master, and java on the slave nodes allowing me to use them for testing on Jenkins.



- These are the Nodes working and stable after creation, each can run 3 builds at a time.


## CI/CD Pipelines



- These are the 3 pipelines I attempted to build, The Dev_Env_CI just accepts Pull Requests as shown below, Whilst the others are meant to be a CI/CD Pipeline but I haven't been able to run packer build on the last pipeline to make the AMI

![Used GitHub Pull Requests](https://user-images.githubusercontent.com/60632288/79211848-a7697580-7e3e-11ea-8be7-9debaded989b.png)

- This is an example of the Pull Request plugin I used for the CI pipeline.

![Runs Pytest](https://user-images.githubusercontent.com/60632288/79211854-a9cbcf80-7e3e-11ea-980f-da3ef4743bd9.png)

- There are also test being run at the end.
