 Personal OpenVPN on AWS (Terraform) 

This repository contains the Infrastructure as Code (IaC) setup to quickly spin up a personal OpenVPN server on AWS using Terraform. 

I built this project for two main reasons:
1. To get hands-on practice with **Terraform** and **AWS** (VPC, EC2, Security Groups).
2. To have my own secure VPN for public Wi-Fi without relying on paid third-party services.

##  Tech Stack
* **Cloud Provider:** AWS (Amazon Web Services)
* **IaC Tool:** Terraform
* **Core Services:** EC2 (Ubuntu), VPC, Internet Gateway, Security Groups
* **VPN Protocol:** OpenVPN

##  How to Use It

If you want to deploy this yourself, make sure you have Terraform installed and your AWS CLI configured with your credentials.

1. Clone this repo:
   ```bash
   git clone [https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git](https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git)
   cd YOUR_REPO_NAME
