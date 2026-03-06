# Azure Landing Zone Lab -- Week 1

## Overview

This repository contains the infrastructure and documentation created as
part of **Week 1 of the Azure Landing Zone Lab**. The goal of this lab
is to build a foundational Azure environment following **Cloud Adoption
Framework (CAF)** principles and using **Infrastructure as Code (IaC)**
with **Terraform**.

This lab focuses on establishing the core building blocks required for a
scalable, secure, and production‑ready Azure environment.

------------------------------------------------------------------------

## Objectives

-   Create a basic Azure Landing Zone structure
-   Deploy infrastructure using Terraform
-   Implement a hub-and-spoke style network foundation
-   Apply naming standards and tagging
-   Prepare the environment for future DEV / TEST / PROD pipelines
-   Align the deployment with Azure Cloud Adoption Framework guidance

------------------------------------------------------------------------

## Architecture (Week 1)

Components deployed in this stage:

-   Resource Group for core infrastructure
-   Virtual Network
-   Subnets for future workloads
-   Network security boundaries
-   Basic tagging and naming standards

Future weeks will expand this to include:

-   Hub / Spoke networking
-   Azure Firewall
-   Private DNS
-   Log Analytics
-   Azure Policy
-   CI/CD pipelines

------------------------------------------------------------------------

## Repository Structure

    .
    ├── terraform/
    │   ├── main.tf
    │   ├── variables.tf
    │   ├── outputs.tf
    │   └── provider.tf
    │
    ├── docs/
    │   └── lab-notes.md
    │
    └── README.md

------------------------------------------------------------------------

## Prerequisites

Before deploying this lab you will need:

-   Azure Subscription
-   Azure CLI installed
-   Terraform installed (\>= 1.5 recommended)
-   Contributor permissions in the target subscription

Login to Azure:

    az login

------------------------------------------------------------------------

## Deployment Steps

### 1. Clone the repository

    git clone https://github.com/YOUR-USERNAME/azure-landing-zone-lab.git
    cd azure-landing-zone-lab

### 2. Initialize Terraform

    terraform init

### 3. Validate configuration

    terraform validate

### 4. Review deployment plan

    terraform plan

### 5. Deploy infrastructure

    terraform apply

------------------------------------------------------------------------

## Example Naming Convention

  Resource          Example
  ----------------- ---------------------
  Resource Group    rg-platform-dev-uks
  Virtual Network   vnet-hub-uks
  Subnet            snet-management
  Log Analytics     law-platform-uks

------------------------------------------------------------------------

## Tags

All resources include baseline tags:

  Tag           Example
  ------------- ---------------------
  Environment   Dev
  Owner         CloudTeam
  Project       AzureLandingZoneLab

------------------------------------------------------------------------

## Learning Goals

This lab helps reinforce the following skills:

-   Azure platform architecture
-   Terraform Infrastructure as Code
-   Cloud Adoption Framework concepts
-   Landing Zone design
-   DevOps-ready infrastructure

------------------------------------------------------------------------

## Next Steps (Week 2)

In the next stage of the lab we will:

-   Add Hub Networking
-   Implement Azure Firewall
-   Introduce Log Analytics
-   Configure Azure Policy
-   Begin building Azure DevOps pipelines

------------------------------------------------------------------------

## Author

Created as part of a Cloud Engineering learning lab focused on
mastering:

-   Azure
-   Terraform
-   Azure DevOps
-   Landing Zone Architecture
