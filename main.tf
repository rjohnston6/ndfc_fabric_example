terraform {
  required_providers {
    dcnm = {
      source = "CiscoDevNet/dcnm"
    }
  }
}

data "dcnm_inventory" "fabric-1" {
  for_each    = toset(var.fabric_switches)
  fabric_name = var.fabric_name
  switch_name = each.value
}
