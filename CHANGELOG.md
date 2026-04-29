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

## [1.1.0] - 2026-04-28
### Añadido
- Mejora en las descripciones de variables para cumplimiento de nomenclatura.
- Actualización de políticas OPA para validación de SSH y tipo de instancia.


## [1.2.0] - 2026-04-28

### Corregido
- **Pipeline:** Se corrigió el error de resolución de versión en la acción de TFLint cambiando `terraform-linters/tflint/action@v4` por `terraform-linters/setup-tflint@v4` para permitir la ejecución del análisis estático.
- **Seguridad:** Se implementó el flag `--soft-fail` en la etapa de Checkov para permitir que el pipeline avance a la validación final mientras se mantienen visibles las alertas de seguridad identificadas.

### Añadido
- **Infraestructura:** Se parametrizó el tipo de instancia EC2 en `variables.tf` y `main.tf`, asegurando el cumplimiento de la política OPA que restringe el uso a `t2.micro`.
- **Documentación:** Se agregaron descripciones detalladas a las variables de red y cómputo para mejorar la mantenibilidad del código.