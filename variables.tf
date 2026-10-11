variable "fleet_apps_management_runbooks" {
  description = <<EOT
Map of fleet_apps_management_runbooks, attributes below
Required:
    - compartment_id
    - display_name
    - operation
    - runbook_version (block):
        - execution_workflow_details (required, block):
            - workflow (required, block):
                - group_name (required)
                - steps (required, block):
                    - group_name (optional)
                    - step_name (optional)
                    - steps (optional)
                    - type (required)
                - type (required)
        - groups (required, block):
            - name (required)
            - properties (optional, block):
                - action_on_failure (required)
                - notification_preferences (optional, block):
                    - should_notify_on_pause (optional)
                    - should_notify_on_task_failure (optional)
                    - should_notify_on_task_success (optional)
                - pause_details (optional, block):
                    - duration_in_minutes (optional)
                    - kind (required)
                - pre_condition (optional)
                - run_on (optional, block):
                    - condition (optional)
                    - host (optional)
                    - kind (required)
                    - previous_task_instance_details (optional, block):
                        - output_variable_details (optional, block):
                            - output_variable_name (optional)
                            - step_name (optional)
                        - resource_id (optional)
                        - resource_type (optional)
            - type (required)
        - is_latest (optional)
        - rollback_workflow_details (optional, block):
            - scope (required)
            - workflow (required, block):
                - group_name (required)
                - steps (required, block):
                    - group_name (optional)
                    - step_name (optional)
                    - steps (optional)
                    - type (required)
                - type (required)
        - tasks (required, block):
            - output_variable_mappings (optional, block):
                - name (required)
                - output_variable_details (required, block):
                    - output_variable_name (required)
                    - step_name (required)
            - step_name (required)
            - step_properties (optional, block):
                - action_on_failure (required)
                - notification_preferences (optional, block):
                    - should_notify_on_pause (optional)
                    - should_notify_on_task_failure (optional)
                    - should_notify_on_task_success (optional)
                - pause_details (optional, block):
                    - duration_in_minutes (optional)
                    - kind (required)
                - pre_condition (optional)
                - run_on (optional, block):
                    - condition (optional)
                    - host (optional)
                    - kind (required)
                    - previous_task_instance_details (optional, block):
                        - output_variable_details (optional, block):
                            - output_variable_name (optional)
                            - step_name (optional)
                        - resource_id (optional)
                        - resource_type (optional)
            - task_record_details (required, block):
                - description (optional)
                - execution_details (optional, block):
                    - catalog_id (optional)
                    - command (optional)
                    - config_file (optional)
                    - content (optional, block):
                        - bucket (optional)
                        - catalog_id (optional)
                        - checksum (optional)
                        - namespace (optional)
                        - object (optional)
                        - source_type (required)
                    - credentials (optional, block):
                        - display_name (optional)
                        - id (optional)
                    - endpoint (optional)
                    - execution_type (required)
                    - is_executable_content (optional)
                    - is_locked (optional)
                    - is_read_output_variable_enabled (optional)
                    - target_compartment_id (optional)
                    - variables (optional, block):
                        - input_variables (optional, block):
                            - description (optional)
                            - name (optional)
                            - type (optional)
                        - output_variables (optional)
                - is_apply_subject_task (optional)
                - is_copy_to_library_enabled (optional)
                - is_discovery_output_task (optional)
                - name (optional)
                - os_type (optional)
                - platform (optional)
                - properties (optional, block):
                    - num_retries (optional)
                    - timeout_in_seconds (optional)
                - scope (required)
                - task_record_id (optional)
        - version (optional)
Optional:
    - defined_tags
    - description
    - estimated_time
    - freeform_tags
    - is_default
    - is_sudo_access_needed
    - os_type
    - platform
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id        = string
    display_name          = string
    operation             = string
    defined_tags          = optional(map(string))
    description           = optional(string)
    estimated_time        = optional(string)
    freeform_tags         = optional(map(string))
    is_default            = optional(bool)
    is_sudo_access_needed = optional(bool)
    os_type               = optional(string)
    platform              = optional(string)
    runbook_version = object({
      execution_workflow_details = object({
        workflow = list(object({
          group_name = string
          steps = list(object({
            group_name = optional(string)
            step_name  = optional(string)
            steps      = optional(list(string))
            type       = string
          }))
          type = string
        }))
      })
      groups = list(object({
        name = string
        properties = optional(object({
          action_on_failure = string
          notification_preferences = optional(object({
            should_notify_on_pause        = optional(bool)
            should_notify_on_task_failure = optional(bool)
            should_notify_on_task_success = optional(bool)
          }))
          pause_details = optional(object({
            duration_in_minutes = optional(number)
            kind                = string
          }))
          pre_condition = optional(string)
          run_on = optional(object({
            condition = optional(string)
            host      = optional(string)
            kind      = string
            previous_task_instance_details = optional(list(object({
              output_variable_details = optional(object({
                output_variable_name = optional(string)
                step_name            = optional(string)
              }))
              resource_id   = optional(string)
              resource_type = optional(string)
            })))
          }))
        }))
        type = string
      }))
      is_latest = optional(bool)
      rollback_workflow_details = optional(object({
        scope = string
        workflow = list(object({
          group_name = string
          steps = list(object({
            group_name = optional(string)
            step_name  = optional(string)
            steps      = optional(list(string))
            type       = string
          }))
          type = string
        }))
      }))
      tasks = list(object({
        output_variable_mappings = optional(list(object({
          name = string
          output_variable_details = object({
            output_variable_name = string
            step_name            = string
          })
        })))
        step_name = string
        step_properties = optional(object({
          action_on_failure = string
          notification_preferences = optional(object({
            should_notify_on_pause        = optional(bool)
            should_notify_on_task_failure = optional(bool)
            should_notify_on_task_success = optional(bool)
          }))
          pause_details = optional(object({
            duration_in_minutes = optional(number)
            kind                = string
          }))
          pre_condition = optional(string)
          run_on = optional(object({
            condition = optional(string)
            host      = optional(string)
            kind      = string
            previous_task_instance_details = optional(list(object({
              output_variable_details = optional(object({
                output_variable_name = optional(string)
                step_name            = optional(string)
              }))
              resource_id   = optional(string)
              resource_type = optional(string)
            })))
          }))
        }))
        task_record_details = object({
          description = optional(string)
          execution_details = optional(object({
            catalog_id  = optional(string)
            command     = optional(string)
            config_file = optional(string)
            content = optional(object({
              bucket      = optional(string)
              catalog_id  = optional(string)
              checksum    = optional(string)
              namespace   = optional(string)
              object      = optional(string)
              source_type = string
            }))
            credentials = optional(list(object({
              display_name = optional(string)
              id           = optional(string)
            })))
            endpoint                        = optional(string)
            execution_type                  = string
            is_executable_content           = optional(bool)
            is_locked                       = optional(bool)
            is_read_output_variable_enabled = optional(bool)
            target_compartment_id           = optional(string)
            variables = optional(object({
              input_variables = optional(list(object({
                description = optional(string)
                name        = optional(string)
                type        = optional(string)
              })))
              output_variables = optional(list(string))
            }))
          }))
          is_apply_subject_task      = optional(bool)
          is_copy_to_library_enabled = optional(bool)
          is_discovery_output_task   = optional(bool)
          name                       = optional(string)
          os_type                    = optional(string)
          platform                   = optional(string)
          properties = optional(object({
            num_retries        = optional(number)
            timeout_in_seconds = optional(number)
          }))
          scope          = string
          task_record_id = optional(string)
        })
      }))
      version = optional(string)
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.fleet_apps_management_runbooks : (
        length(v.runbook_version.execution_workflow_details.workflow) >= 1
      )
    ])
    error_message = "Each workflow list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.fleet_apps_management_runbooks : (
        alltrue([for item in v.runbook_version.execution_workflow_details.workflow : (length(item.steps) >= 1)])
      )
    ])
    error_message = "Each steps list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.fleet_apps_management_runbooks : (
        length(v.runbook_version.groups) >= 1
      )
    ])
    error_message = "Each groups list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.fleet_apps_management_runbooks : (
        v.runbook_version.rollback_workflow_details == null || (length(v.runbook_version.rollback_workflow_details.workflow) >= 1)
      )
    ])
    error_message = "Each workflow list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.fleet_apps_management_runbooks : (
        v.runbook_version.rollback_workflow_details == null || (alltrue([for item in v.runbook_version.rollback_workflow_details.workflow : (length(item.steps) >= 1)]))
      )
    ])
    error_message = "Each steps list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.fleet_apps_management_runbooks : (
        length(v.runbook_version.tasks) >= 1
      )
    ])
    error_message = "Each tasks list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.fleet_apps_management_runbooks : (
        alltrue([for item in v.runbook_version.execution_workflow_details.workflow : (alltrue([for item in item.steps : (contains([for v in ["PARALLEL_TASK_GROUP", "TASK"] : lower(v)], lower(item.type)))]))])
      )
    ])
    error_message = "must be one of: \"PARALLEL_TASK_GROUP\", \"TASK\""
  }
  validation {
    condition = alltrue([
      for k, v in var.fleet_apps_management_runbooks : (
        alltrue([for item in v.runbook_version.groups : (item.properties == null || (item.properties.pause_details == null || (contains([for v in ["TIME_BASED", "USER_ACTION"] : lower(v)], lower(item.properties.pause_details.kind)))))])
      )
    ])
    error_message = "must be one of: \"TIME_BASED\", \"USER_ACTION\""
  }
  validation {
    condition = alltrue([
      for k, v in var.fleet_apps_management_runbooks : (
        alltrue([for item in v.runbook_version.groups : (item.properties == null || (item.properties.run_on == null || (contains([for v in ["PREVIOUS_TASK_INSTANCES", "SCHEDULED_INSTANCES", "SELF_HOSTED_INSTANCES"] : lower(v)], lower(item.properties.run_on.kind)))))])
      )
    ])
    error_message = "must be one of: \"PREVIOUS_TASK_INSTANCES\", \"SCHEDULED_INSTANCES\", \"SELF_HOSTED_INSTANCES\""
  }
  validation {
    condition = alltrue([
      for k, v in var.fleet_apps_management_runbooks : (
        alltrue([for item in v.runbook_version.tasks : (contains([for v in ["LOCAL", "SHARED"] : lower(v)], lower(item.task_record_details.scope)))])
      )
    ])
    error_message = "must be one of: \"LOCAL\", \"SHARED\""
  }
  validation {
    condition = alltrue([
      for k, v in var.fleet_apps_management_runbooks : (
        alltrue([for item in v.runbook_version.tasks : (item.task_record_details.execution_details == null || (contains([for v in ["API", "SCRIPT", "TERRAFORM"] : lower(v)], lower(item.task_record_details.execution_details.execution_type))))])
      )
    ])
    error_message = "must be one of: \"API\", \"SCRIPT\", \"TERRAFORM\""
  }
  validation {
    condition = alltrue([
      for k, v in var.fleet_apps_management_runbooks : (
        alltrue([for item in v.runbook_version.tasks : (item.task_record_details.execution_details == null || (item.task_record_details.execution_details.content == null || (contains([for v in ["CATALOG", "OBJECT_STORAGE_BUCKET"] : lower(v)], lower(item.task_record_details.execution_details.content.source_type)))))])
      )
    ])
    error_message = "must be one of: \"CATALOG\", \"OBJECT_STORAGE_BUCKET\""
  }
  validation {
    condition = alltrue([
      for k, v in var.fleet_apps_management_runbooks : (
        alltrue([for item in v.runbook_version.tasks : (item.step_properties == null || (item.step_properties.pause_details == null || (contains([for v in ["TIME_BASED", "USER_ACTION"] : lower(v)], lower(item.step_properties.pause_details.kind)))))])
      )
    ])
    error_message = "must be one of: \"TIME_BASED\", \"USER_ACTION\""
  }
  validation {
    condition = alltrue([
      for k, v in var.fleet_apps_management_runbooks : (
        alltrue([for item in v.runbook_version.tasks : (item.step_properties == null || (item.step_properties.run_on == null || (contains([for v in ["PREVIOUS_TASK_INSTANCES", "SCHEDULED_INSTANCES", "SELF_HOSTED_INSTANCES"] : lower(v)], lower(item.step_properties.run_on.kind)))))])
      )
    ])
    error_message = "must be one of: \"PREVIOUS_TASK_INSTANCES\", \"SCHEDULED_INSTANCES\", \"SELF_HOSTED_INSTANCES\""
  }
  validation {
    condition = alltrue([
      for k, v in var.fleet_apps_management_runbooks : (
        v.runbook_version.rollback_workflow_details == null || (alltrue([for item in v.runbook_version.rollback_workflow_details.workflow : (alltrue([for item in item.steps : (contains([for v in ["PARALLEL_TASK_GROUP", "TASK"] : lower(v)], lower(item.type)))]))]))
      )
    ])
    error_message = "must be one of: \"PARALLEL_TASK_GROUP\", \"TASK\""
  }
}

