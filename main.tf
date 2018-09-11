locals {
  namespace   = "${lower(replace(var.namespace, "/[^a-zA-Z0-9]/",""))}"
  environment = "${lower(replace(var.environment, "/[^a-zA-Z0-9]/",""))}"
  name        = "${lower(replace(var.name, "/[^a-zA-Z0-9]/",""))}"
  delimiter   = "${var.delimiter}"
  owner       = "${var.owner}"
  tags        = "${merge(var.tags, local.generated_tags)}"

  id_context = {
    namespace   = "${local.namespace}"
    name        = "${local.name}"
    environment = "${local.environment}"
  }

  id_order_list = ["namespace", "environment", "name"]

  generated_tags = {
    "Namespace"   = "${local.namespace}"
    "Name"        = "${local.name}"
    "Owner"       = "${local.owner}"
    "Environment" = "${local.environment}"
    "Terraform"   = "true"
  }

  id = "${lower(join(local.delimiter, compact(list(
      local.id_context[element(local.id_order_list, 0)],
      local.id_context[element(local.id_order_list, 1)],
      local.id_context[element(local.id_order_list, 2)],
    ))))}"
}
