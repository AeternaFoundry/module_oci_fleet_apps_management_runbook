resource "oci_fleet_apps_management_runbook" "fleet_apps_management_runbooks" {
  for_each = var.fleet_apps_management_runbooks

  compartment_id        = each.value.compartment_id
  display_name          = each.value.display_name
  operation             = each.value.operation
  defined_tags          = each.value.defined_tags
  description           = each.value.description
  estimated_time        = each.value.estimated_time
  freeform_tags         = each.value.freeform_tags
  is_default            = each.value.is_default
  is_sudo_access_needed = each.value.is_sudo_access_needed
  os_type               = each.value.os_type
  platform              = each.value.platform

  runbook_version {
    execution_workflow_details {
      dynamic "workflow" {
        for_each = each.value.runbook_version.execution_workflow_details.workflow
        content {
          group_name = workflow.value.group_name
          dynamic "steps" {
            for_each = workflow.value.steps
            content {
              group_name = steps.value.group_name
              step_name  = steps.value.step_name
              steps      = steps.value.steps
              type       = steps.value.type
            }
          }
          type = workflow.value.type
        }
      }
    }
    dynamic "groups" {
      for_each = each.value.runbook_version.groups
      content {
        name = groups.value.name
        dynamic "properties" {
          for_each = groups.value.properties != null ? [groups.value.properties] : []
          content {
            action_on_failure = properties.value.action_on_failure
            dynamic "notification_preferences" {
              for_each = properties.value.notification_preferences != null ? [properties.value.notification_preferences] : []
              content {
                should_notify_on_pause        = notification_preferences.value.should_notify_on_pause
                should_notify_on_task_failure = notification_preferences.value.should_notify_on_task_failure
                should_notify_on_task_success = notification_preferences.value.should_notify_on_task_success
              }
            }
            dynamic "pause_details" {
              for_each = properties.value.pause_details != null ? [properties.value.pause_details] : []
              content {
                duration_in_minutes = pause_details.value.duration_in_minutes
                kind                = pause_details.value.kind
              }
            }
            pre_condition = properties.value.pre_condition
            dynamic "run_on" {
              for_each = properties.value.run_on != null ? [properties.value.run_on] : []
              content {
                condition = run_on.value.condition
                host      = run_on.value.host
                kind      = run_on.value.kind
                dynamic "previous_task_instance_details" {
                  for_each = run_on.value.previous_task_instance_details != null ? run_on.value.previous_task_instance_details : []
                  content {
                    dynamic "output_variable_details" {
                      for_each = previous_task_instance_details.value.output_variable_details != null ? [previous_task_instance_details.value.output_variable_details] : []
                      content {
                        output_variable_name = output_variable_details.value.output_variable_name
                        step_name            = output_variable_details.value.step_name
                      }
                    }
                    resource_id   = previous_task_instance_details.value.resource_id
                    resource_type = previous_task_instance_details.value.resource_type
                  }
                }
              }
            }
          }
        }
        type = groups.value.type
      }
    }
    is_latest = each.value.runbook_version.is_latest
    dynamic "rollback_workflow_details" {
      for_each = each.value.runbook_version.rollback_workflow_details != null ? [each.value.runbook_version.rollback_workflow_details] : []
      content {
        scope = rollback_workflow_details.value.scope
        dynamic "workflow" {
          for_each = rollback_workflow_details.value.workflow
          content {
            group_name = workflow.value.group_name
            dynamic "steps" {
              for_each = workflow.value.steps
              content {
                group_name = steps.value.group_name
                step_name  = steps.value.step_name
                steps      = steps.value.steps
                type       = steps.value.type
              }
            }
            type = workflow.value.type
          }
        }
      }
    }
    dynamic "tasks" {
      for_each = each.value.runbook_version.tasks
      content {
        dynamic "output_variable_mappings" {
          for_each = tasks.value.output_variable_mappings != null ? tasks.value.output_variable_mappings : []
          content {
            name = output_variable_mappings.value.name
            output_variable_details {
              output_variable_name = output_variable_mappings.value.output_variable_details.output_variable_name
              step_name            = output_variable_mappings.value.output_variable_details.step_name
            }
          }
        }
        step_name = tasks.value.step_name
        dynamic "step_properties" {
          for_each = tasks.value.step_properties != null ? [tasks.value.step_properties] : []
          content {
            action_on_failure = step_properties.value.action_on_failure
            dynamic "notification_preferences" {
              for_each = step_properties.value.notification_preferences != null ? [step_properties.value.notification_preferences] : []
              content {
                should_notify_on_pause        = notification_preferences.value.should_notify_on_pause
                should_notify_on_task_failure = notification_preferences.value.should_notify_on_task_failure
                should_notify_on_task_success = notification_preferences.value.should_notify_on_task_success
              }
            }
            dynamic "pause_details" {
              for_each = step_properties.value.pause_details != null ? [step_properties.value.pause_details] : []
              content {
                duration_in_minutes = pause_details.value.duration_in_minutes
                kind                = pause_details.value.kind
              }
            }
            pre_condition = step_properties.value.pre_condition
            dynamic "run_on" {
              for_each = step_properties.value.run_on != null ? [step_properties.value.run_on] : []
              content {
                condition = run_on.value.condition
                host      = run_on.value.host
                kind      = run_on.value.kind
                dynamic "previous_task_instance_details" {
                  for_each = run_on.value.previous_task_instance_details != null ? run_on.value.previous_task_instance_details : []
                  content {
                    dynamic "output_variable_details" {
                      for_each = previous_task_instance_details.value.output_variable_details != null ? [previous_task_instance_details.value.output_variable_details] : []
                      content {
                        output_variable_name = output_variable_details.value.output_variable_name
                        step_name            = output_variable_details.value.step_name
                      }
                    }
                    resource_id   = previous_task_instance_details.value.resource_id
                    resource_type = previous_task_instance_details.value.resource_type
                  }
                }
              }
            }
          }
        }
        task_record_details {
          description = tasks.value.task_record_details.description
          dynamic "execution_details" {
            for_each = tasks.value.task_record_details.execution_details != null ? [tasks.value.task_record_details.execution_details] : []
            content {
              catalog_id  = execution_details.value.catalog_id
              command     = execution_details.value.command
              config_file = execution_details.value.config_file
              dynamic "content" {
                for_each = execution_details.value.content != null ? [execution_details.value.content] : []
                content {
                  bucket      = content.value.bucket
                  catalog_id  = content.value.catalog_id
                  checksum    = content.value.checksum
                  namespace   = content.value.namespace
                  object      = content.value.object
                  source_type = content.value.source_type
                }
              }
              dynamic "credentials" {
                for_each = execution_details.value.credentials != null ? execution_details.value.credentials : []
                content {
                  display_name = credentials.value.display_name
                  id           = credentials.value.id
                }
              }
              endpoint                        = execution_details.value.endpoint
              execution_type                  = execution_details.value.execution_type
              is_executable_content           = execution_details.value.is_executable_content
              is_locked                       = execution_details.value.is_locked
              is_read_output_variable_enabled = execution_details.value.is_read_output_variable_enabled
              target_compartment_id           = execution_details.value.target_compartment_id
              dynamic "variables" {
                for_each = execution_details.value.variables != null ? [execution_details.value.variables] : []
                content {
                  dynamic "input_variables" {
                    for_each = variables.value.input_variables != null ? variables.value.input_variables : []
                    content {
                      description = input_variables.value.description
                      name        = input_variables.value.name
                      type        = input_variables.value.type
                    }
                  }
                  output_variables = variables.value.output_variables
                }
              }
            }
          }
          is_apply_subject_task      = tasks.value.task_record_details.is_apply_subject_task
          is_copy_to_library_enabled = tasks.value.task_record_details.is_copy_to_library_enabled
          is_discovery_output_task   = tasks.value.task_record_details.is_discovery_output_task
          name                       = tasks.value.task_record_details.name
          os_type                    = tasks.value.task_record_details.os_type
          platform                   = tasks.value.task_record_details.platform
          dynamic "properties" {
            for_each = tasks.value.task_record_details.properties != null ? [tasks.value.task_record_details.properties] : []
            content {
              num_retries        = properties.value.num_retries
              timeout_in_seconds = properties.value.timeout_in_seconds
            }
          }
          scope          = tasks.value.task_record_details.scope
          task_record_id = tasks.value.task_record_details.task_record_id
        }
      }
    }
    version = each.value.runbook_version.version
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

