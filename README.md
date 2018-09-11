# Terraform label

Generate consistent label names and tags for terraform resources.

## Usage

```
module "label" {
  source      = "git::https://github.com/nakt/terraform-label?ref=master"
  namespace   = "nakt"
  environment = "prd"
  name        = "apitest"
  owner       = "mail@example.com"
  delimiter   = "-"
}

output "tags" {
  value = "${module.label.tags}"
}

output "id" {
  value = "${module.label.id}"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| delimiter | Delimiter to be used between each parameters | string | `-` | no |
| environment | e.g 'prd'. 'stg', 'dev', 'UAT' | string | `` | no |
| name | e.g 'api', 'managementtools' | string | `` | no |
| namespace | Organization name or abbreviation | string | `` | no |
| owner | email address of environment owner | string | `` | no |
| tags | Additional tags | map | `<map>` | no |

## Outputs

| Name | Description |
|------|-------------|
| environment | Normalized environment name |
| id | Genereted ID |
| name | Normalized name |
| namespace | Normalized name space |
| tags | Normalized tag map |

