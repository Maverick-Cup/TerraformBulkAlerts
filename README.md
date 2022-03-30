# TerreformBulkAlerts

# TerraformAlert

# What we are doing: Creating bulk alert for Azure function app using Terraform IaC. 

# How: Follow below steps after you've got Windows CLI for powershell in Visual Studio Code.

# Pre-requites: 1. Windows CLI 2. Visual Studio Code 3. Terraform.exe intalled in C drive & set this path in Environment variable 

Step 1: Open VS Code and use the attached scrip with necessary updates. Once done run PS terminal and use cd to change dir. to where the project is saved and run below command with necessary changes in subscription.

Step 2: Az login

Step 3: az account set --subscription "Azure subscription id"

Step 4: Terraform init

Step 5: Terraform validate

Step 6: Terraform plan

Step 7: Terraform apply

# Once done, check the Azure portal in target resource group, you'll find the new alert depending if condition is met. 
