# Python Environment Project


## This is a repo for the Python Environment Project, As I completed the project in different stages there are several stages which took place prior to the final file.

### What was the Task

- The task was to create a development, testing and production environment for an app and the Jenkins pipeline for it.
- I had to use the code to create a VM.
- Use the VM and Chef to make a chef provision.
- From the Chef Provision use this to create an AMI using a packer.json file. And packer.

### What Did I do?

- Firstly I created the VM using shell provisioning. Then added the the VM by using Chef so that it can be provisioned using chef solo and a cookbook
- Upon completion I created an AMI, Which allowed. Which creates an image and allows me to use that instance to allow me to create EC2/Instances which already have Jenkins and the Code.
- Using the AmI I created 3 instances 1 for Jenkins and the other as slave nodes. The security groups for this were setup,  for my home IP, GitHub Access and for the SlaveNode. This in conjunction with the NACL’s created as well.
- I started the Jenkins CI/CD Pipeline Yet did not complete.


#### Python Environment Using Chef and Vagrant
- https://github.com/victorsibanda/DevEnvChefVM
- When using Chef with Vagrant the provisioning method used is Chef Solo. In this repo you can vagrant up into the machine and test it.

#### Python Environment Using Vagrant
- https://github.com/victorsibanda/dev_env_vm
- Using a simple VM with vagrant to test the code locally.

#### IT Jobs Forked Repository
- https://github.com/victorsibanda/It_Jobs_Watch_Data_Package
- This is the code used for this application


## The project was completed using AWS in which I made a slave node and CI/CD Pipeline

![EC2 On AWS](https://user-images.githubusercontent.com/60632288/79211720-8143d580-7e3e-11ea-903a-3e17e1b56798.png)

- I created 3 EC2s on Amazon AWS, using two as slave nodes and one as a master for Jenkins.
- I then downloaded Jenkins to the master, and java on the slave nodes allowing me to use them for testing on Jenkins.

![Slave-Nodes on Jenkins](https://user-images.githubusercontent.com/60632288/79211788-991b5980-7e3e-11ea-8aa3-d34665bee92a.png)

- These are the Nodes working and stable after creation, each can run 3 builds at a time.


## CI/CD Pipelines

![CI:CD Pipelines](https://user-images.githubusercontent.com/60632288/79211829-a20c2b00-7e3e-11ea-847a-c20e95aa3587.png)

- These are the 3 pipelines I attempted to build, The Dev_Env_CI just accepts Pull Requests as shown below, Whilst the others are meant to be a CI/CD Pipeline but I haven't been able to run packer build on the last pipeline to make the AMI

![Used GitHub Pull Requests](https://user-images.githubusercontent.com/60632288/79211848-a7697580-7e3e-11ea-8be7-9debaded989b.png)

- This is an example of the Pull Request plugin I used for the CI pipeline.

![Runs Pytest](https://user-images.githubusercontent.com/60632288/79211854-a9cbcf80-7e3e-11ea-980f-da3ef4743bd9.png)

- There are also test being run at the end.


## Security Groups

This is the security group for the Master Jenkins
![Screenshot 2020-04-14 at 10 59 45](https://user-images.githubusercontent.com/60632288/79212212-35ddf700-7e3f-11ea-87c5-7af497ab3bb8.png)
- This security group only allows for my IP.

This is the security group for the Slave Nodes
![Screenshot 2020-04-14 at 11 00 28](https://user-images.githubusercontent.com/60632288/79212214-36768d80-7e3f-11ea-835d-bbe5172cc396.png)
- Whist this Node allows for access within the VPC but not from the internet.
