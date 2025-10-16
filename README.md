# AWS VPC Infrastructure with Terraform

## 📘 Overview
This project provisions AWS networking components using **Terraform** in a modular structure.  
It automates the creation of **VPC, Subnets, and NAT Gateway** resources with reusable Terraform modules.

---

## 👨‍💻 Author
**VijayDurai**  
*DevOps & Cloud Engineer*

---

## 🏗️ Project Structure

```
├── env
│   ├── main.tf
│   ├── outputs.tf
│   ├── provider.tf
│   ├── variable.tf
│   └── variable.tfvars
├── modules
│   ├── nat_gateway
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   └── variable.tf
│   └── vpc
│       ├── main.tf
│       ├── outputs.tf
│       └── variable.tf
└── README.md
```

---

## 🧩 Module Descriptions

### 1. **VPC Module (`modules/vpc/`)**
This module creates the core AWS Virtual Private Cloud and subnets.

**Outputs:**
- `vpc_id` — The ID of the created VPC.  
- `subnet_1_id` — The ID of the first subnet.  
- `subnet_2_id` — The ID of the second subnet.  
- `subnet_3_id` — The ID of the third subnet.  
- `subnet_4_id` — The ID of the fourth subnet.  

---

### 2. **NAT Gateway Module (`modules/nat_gateway/`)**
This module provisions a NAT Gateway and Elastic IP (optional, based on configuration).

**Outputs:**
- `nat_gateway_id` — The ID of the NAT Gateway (if created).  
- `nat_gateway_ip` — The public IP address of the NAT Gateway (if created).  

---

## ⚙️ Environment Configuration (`env/`)

The `env` folder contains environment-specific Terraform configuration files.

| File | Description |
|------|--------------|
| `provider.tf` | Defines the AWS provider and region. |
| `main.tf` | Calls the required modules (VPC, NAT Gateway). |
| `variable.tf` | Declares input variables. |
| `variable.tfvars` | Contains actual variable values. |
| `outputs.tf` | Exposes important resource outputs. |

---

## 🚀 Terraform Workflow

### Initialize the project
```bash
terraform init
```

### Validate the configuration
```bash
terraform validate
```

### Plan the infrastructure changes
```bash
terraform plan -var-file="variable.tfvars"
```

### Apply the configuration
```bash
terraform apply -var-file="variable.tfvars"
```

### Destroy the resources
```bash
terraform destroy -var-file="variable.tfvars"
```

---

## 🧠 Notes
- This setup follows Terraform best practices with **modularization** and **environment separation**.
- Ensure your AWS credentials are configured using `aws configure` before running Terraform commands.
- `.terraform` and state files are excluded from version control via `.gitignore`.

---

## 📜 License
This project is maintained by **VijayDurai (DevOps & Cloud Engineer)**.  
You may freely use and modify it for personal or professional learning.

---
