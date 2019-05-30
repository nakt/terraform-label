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
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

