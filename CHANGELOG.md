# CHANGELOG

## [1.0.0] - 2026-04-28
### Added
- Creación inicial del repositorio AUY1105-grupo-XX
- Añadido README.md con objetivos
- Añadido .gitignore para Terraform
- main.tf con VPC, Subnet, SG y EC2
- variables.tf y outputs.tf para modularidad
- policies/security.rego con reglas OPA
- pipeline.yml con validaciones (TFLint, Checkov, Terraform, OPA)

## [1.0.1] - 2026-04-29
### Added
- Tag `Environment = "dev"` en recurso EC2 dentro de `main.tf`.

## [1.0.2] - 2026-04-29
### Added
- Corrección en `pipeline.yml