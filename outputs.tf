output "fleet_apps_management_runbooks_id" {
  description = "Map of id values across all fleet_apps_management_runbooks, keyed the same as var.fleet_apps_management_runbooks except keys with no id are omitted"
  value       = { for k, v in oci_fleet_apps_management_runbook.fleet_apps_management_runbooks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "fleet_apps_management_runbooks_compartment_id" {
  description = "Map of compartment_id values across all fleet_apps_management_runbooks, keyed the same as var.fleet_apps_management_runbooks except keys with no compartment_id are omitted"
  value       = { for k, v in oci_fleet_apps_management_runbook.fleet_apps_management_runbooks : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "fleet_apps_management_runbooks_defined_tags" {
  description = "Map of defined_tags values across all fleet_apps_management_runbooks, keyed the same as var.fleet_apps_management_runbooks except keys with no defined_tags are omitted"
  value       = { for k, v in oci_fleet_apps_management_runbook.fleet_apps_management_runbooks : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "fleet_apps_management_runbooks_description" {
  description = "Map of description values across all fleet_apps_management_runbooks, keyed the same as var.fleet_apps_management_runbooks except keys with no description are omitted"
  value       = { for k, v in oci_fleet_apps_management_runbook.fleet_apps_management_runbooks : k => v.description if v.description != null && length(v.description) > 0 }
}
output "fleet_apps_management_runbooks_display_name" {
  description = "Map of display_name values across all fleet_apps_management_runbooks, keyed the same as var.fleet_apps_management_runbooks except keys with no display_name are omitted"
  value       = { for k, v in oci_fleet_apps_management_runbook.fleet_apps_management_runbooks : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "fleet_apps_management_runbooks_estimated_time" {
  description = "Map of estimated_time values across all fleet_apps_management_runbooks, keyed the same as var.fleet_apps_management_runbooks except keys with no estimated_time are omitted"
  value       = { for k, v in oci_fleet_apps_management_runbook.fleet_apps_management_runbooks : k => v.estimated_time if v.estimated_time != null && length(v.estimated_time) > 0 }
}
output "fleet_apps_management_runbooks_freeform_tags" {
  description = "Map of freeform_tags values across all fleet_apps_management_runbooks, keyed the same as var.fleet_apps_management_runbooks except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_fleet_apps_management_runbook.fleet_apps_management_runbooks : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "fleet_apps_management_runbooks_has_draft_version" {
  description = "Map of has_draft_version values across all fleet_apps_management_runbooks, keyed the same as var.fleet_apps_management_runbooks except keys with no has_draft_version are omitted"
  value       = { for k, v in oci_fleet_apps_management_runbook.fleet_apps_management_runbooks : k => v.has_draft_version if v.has_draft_version != null }
}
output "fleet_apps_management_runbooks_is_default" {
  description = "Map of is_default values across all fleet_apps_management_runbooks, keyed the same as var.fleet_apps_management_runbooks except keys with no is_default are omitted"
  value       = { for k, v in oci_fleet_apps_management_runbook.fleet_apps_management_runbooks : k => v.is_default if v.is_default != null }
}
output "fleet_apps_management_runbooks_is_sudo_access_needed" {
  description = "Map of is_sudo_access_needed values across all fleet_apps_management_runbooks, keyed the same as var.fleet_apps_management_runbooks except keys with no is_sudo_access_needed are omitted"
  value       = { for k, v in oci_fleet_apps_management_runbook.fleet_apps_management_runbooks : k => v.is_sudo_access_needed if v.is_sudo_access_needed != null }
}
output "fleet_apps_management_runbooks_latest_version" {
  description = "Map of latest_version values across all fleet_apps_management_runbooks, keyed the same as var.fleet_apps_management_runbooks except keys with no latest_version are omitted"
  value       = { for k, v in oci_fleet_apps_management_runbook.fleet_apps_management_runbooks : k => v.latest_version if v.latest_version != null && length(v.latest_version) > 0 }
}
output "fleet_apps_management_runbooks_lifecycle_details" {
  description = "Map of lifecycle_details values across all fleet_apps_management_runbooks, keyed the same as var.fleet_apps_management_runbooks except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_fleet_apps_management_runbook.fleet_apps_management_runbooks : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "fleet_apps_management_runbooks_operation" {
  description = "Map of operation values across all fleet_apps_management_runbooks, keyed the same as var.fleet_apps_management_runbooks except keys with no operation are omitted"
  value       = { for k, v in oci_fleet_apps_management_runbook.fleet_apps_management_runbooks : k => v.operation if v.operation != null && length(v.operation) > 0 }
}
output "fleet_apps_management_runbooks_os_type" {
  description = "Map of os_type values across all fleet_apps_management_runbooks, keyed the same as var.fleet_apps_management_runbooks except keys with no os_type are omitted"
  value       = { for k, v in oci_fleet_apps_management_runbook.fleet_apps_management_runbooks : k => v.os_type if v.os_type != null && length(v.os_type) > 0 }
}
output "fleet_apps_management_runbooks_platform" {
  description = "Map of platform values across all fleet_apps_management_runbooks, keyed the same as var.fleet_apps_management_runbooks except keys with no platform are omitted"
  value       = { for k, v in oci_fleet_apps_management_runbook.fleet_apps_management_runbooks : k => v.platform if v.platform != null && length(v.platform) > 0 }
}
output "fleet_apps_management_runbooks_resource_region" {
  description = "Map of resource_region values across all fleet_apps_management_runbooks, keyed the same as var.fleet_apps_management_runbooks except keys with no resource_region are omitted"
  value       = { for k, v in oci_fleet_apps_management_runbook.fleet_apps_management_runbooks : k => v.resource_region if v.resource_region != null && length(v.resource_region) > 0 }
}
output "fleet_apps_management_runbooks_runbook_version" {
  description = "Map of runbook_version values across all fleet_apps_management_runbooks, keyed the same as var.fleet_apps_management_runbooks except keys with no runbook_version are omitted"
  value       = { for k, v in oci_fleet_apps_management_runbook.fleet_apps_management_runbooks : k => one(v.runbook_version) if v.runbook_version != null && length(v.runbook_version) > 0 }
}
output "fleet_apps_management_runbooks_state" {
  description = "Map of state values across all fleet_apps_management_runbooks, keyed the same as var.fleet_apps_management_runbooks except keys with no state are omitted"
  value       = { for k, v in oci_fleet_apps_management_runbook.fleet_apps_management_runbooks : k => v.state if v.state != null && length(v.state) > 0 }
}
output "fleet_apps_management_runbooks_system_tags" {
  description = "Map of system_tags values across all fleet_apps_management_runbooks, keyed the same as var.fleet_apps_management_runbooks except keys with no system_tags are omitted"
  value       = { for k, v in oci_fleet_apps_management_runbook.fleet_apps_management_runbooks : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "fleet_apps_management_runbooks_time_created" {
  description = "Map of time_created values across all fleet_apps_management_runbooks, keyed the same as var.fleet_apps_management_runbooks except keys with no time_created are omitted"
  value       = { for k, v in oci_fleet_apps_management_runbook.fleet_apps_management_runbooks : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "fleet_apps_management_runbooks_time_updated" {
  description = "Map of time_updated values across all fleet_apps_management_runbooks, keyed the same as var.fleet_apps_management_runbooks except keys with no time_updated are omitted"
  value       = { for k, v in oci_fleet_apps_management_runbook.fleet_apps_management_runbooks : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}
output "fleet_apps_management_runbooks_type" {
  description = "Map of type values across all fleet_apps_management_runbooks, keyed the same as var.fleet_apps_management_runbooks except keys with no type are omitted"
  value       = { for k, v in oci_fleet_apps_management_runbook.fleet_apps_management_runbooks : k => v.type if v.type != null && length(v.type) > 0 }
}

