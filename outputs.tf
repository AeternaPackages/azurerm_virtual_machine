# --- azurerm_virtual_machine ---
output "virtual_machines_additional_capabilities" {
  description = "Map of additional_capabilities values across all virtual_machines, keyed the same as var.virtual_machines"
  value       = module.virtual_machines.virtual_machines_additional_capabilities
}

output "virtual_machines_availability_set_id" {
  description = "Map of availability_set_id values across all virtual_machines, keyed the same as var.virtual_machines"
  value       = module.virtual_machines.virtual_machines_availability_set_id
}

output "virtual_machines_boot_diagnostics" {
  description = "Map of boot_diagnostics values across all virtual_machines, keyed the same as var.virtual_machines"
  value       = module.virtual_machines.virtual_machines_boot_diagnostics
}

output "virtual_machines_delete_data_disks_on_termination" {
  description = "Map of delete_data_disks_on_termination values across all virtual_machines, keyed the same as var.virtual_machines"
  value       = module.virtual_machines.virtual_machines_delete_data_disks_on_termination
}

output "virtual_machines_delete_os_disk_on_termination" {
  description = "Map of delete_os_disk_on_termination values across all virtual_machines, keyed the same as var.virtual_machines"
  value       = module.virtual_machines.virtual_machines_delete_os_disk_on_termination
}

output "virtual_machines_identity" {
  description = "Map of identity values across all virtual_machines, keyed the same as var.virtual_machines"
  value       = module.virtual_machines.virtual_machines_identity
}

output "virtual_machines_license_type" {
  description = "Map of license_type values across all virtual_machines, keyed the same as var.virtual_machines"
  value       = module.virtual_machines.virtual_machines_license_type
}

output "virtual_machines_location" {
  description = "Map of location values across all virtual_machines, keyed the same as var.virtual_machines"
  value       = module.virtual_machines.virtual_machines_location
}

output "virtual_machines_name" {
  description = "Map of name values across all virtual_machines, keyed the same as var.virtual_machines"
  value       = module.virtual_machines.virtual_machines_name
}

output "virtual_machines_network_interface_ids" {
  description = "Map of network_interface_ids values across all virtual_machines, keyed the same as var.virtual_machines"
  value       = module.virtual_machines.virtual_machines_network_interface_ids
}

output "virtual_machines_os_profile" {
  description = "Map of os_profile values across all virtual_machines, keyed the same as var.virtual_machines"
  value       = module.virtual_machines.virtual_machines_os_profile
  sensitive   = true
}

output "virtual_machines_os_profile_linux_config" {
  description = "Map of os_profile_linux_config values across all virtual_machines, keyed the same as var.virtual_machines"
  value       = module.virtual_machines.virtual_machines_os_profile_linux_config
}

output "virtual_machines_os_profile_secrets" {
  description = "Map of os_profile_secrets values across all virtual_machines, keyed the same as var.virtual_machines"
  value       = module.virtual_machines.virtual_machines_os_profile_secrets
}

output "virtual_machines_os_profile_windows_config" {
  description = "Map of os_profile_windows_config values across all virtual_machines, keyed the same as var.virtual_machines"
  value       = module.virtual_machines.virtual_machines_os_profile_windows_config
  sensitive   = true
}

output "virtual_machines_plan" {
  description = "Map of plan values across all virtual_machines, keyed the same as var.virtual_machines"
  value       = module.virtual_machines.virtual_machines_plan
}

output "virtual_machines_primary_network_interface_id" {
  description = "Map of primary_network_interface_id values across all virtual_machines, keyed the same as var.virtual_machines"
  value       = module.virtual_machines.virtual_machines_primary_network_interface_id
}

output "virtual_machines_proximity_placement_group_id" {
  description = "Map of proximity_placement_group_id values across all virtual_machines, keyed the same as var.virtual_machines"
  value       = module.virtual_machines.virtual_machines_proximity_placement_group_id
}

output "virtual_machines_resource_group_name" {
  description = "Map of resource_group_name values across all virtual_machines, keyed the same as var.virtual_machines"
  value       = module.virtual_machines.virtual_machines_resource_group_name
}

output "virtual_machines_storage_data_disk" {
  description = "Map of storage_data_disk values across all virtual_machines, keyed the same as var.virtual_machines"
  value       = module.virtual_machines.virtual_machines_storage_data_disk
}

output "virtual_machines_storage_image_reference" {
  description = "Map of storage_image_reference values across all virtual_machines, keyed the same as var.virtual_machines"
  value       = module.virtual_machines.virtual_machines_storage_image_reference
}

output "virtual_machines_storage_os_disk" {
  description = "Map of storage_os_disk values across all virtual_machines, keyed the same as var.virtual_machines"
  value       = module.virtual_machines.virtual_machines_storage_os_disk
}

output "virtual_machines_tags" {
  description = "Map of tags values across all virtual_machines, keyed the same as var.virtual_machines"
  value       = module.virtual_machines.virtual_machines_tags
}

output "virtual_machines_vm_size" {
  description = "Map of vm_size values across all virtual_machines, keyed the same as var.virtual_machines"
  value       = module.virtual_machines.virtual_machines_vm_size
}

output "virtual_machines_zones" {
  description = "Map of zones values across all virtual_machines, keyed the same as var.virtual_machines"
  value       = module.virtual_machines.virtual_machines_zones
}

# --- azurerm_virtual_machine_automanage_configuration_assignment ---
output "virtual_machine_automanage_configuration_assignments_configuration_id" {
  description = "Map of configuration_id values across all virtual_machine_automanage_configuration_assignments, keyed the same as var.virtual_machine_automanage_configuration_assignments"
  value       = module.virtual_machine_automanage_configuration_assignments.virtual_machine_automanage_configuration_assignments_configuration_id
}

output "virtual_machine_automanage_configuration_assignments_virtual_machine_id" {
  description = "Map of virtual_machine_id values across all virtual_machine_automanage_configuration_assignments, keyed the same as var.virtual_machine_automanage_configuration_assignments"
  value       = module.virtual_machine_automanage_configuration_assignments.virtual_machine_automanage_configuration_assignments_virtual_machine_id
}

# --- azurerm_virtual_machine_data_disk_attachment ---
output "virtual_machine_data_disk_attachments_caching" {
  description = "Map of caching values across all virtual_machine_data_disk_attachments, keyed the same as var.virtual_machine_data_disk_attachments"
  value       = module.virtual_machine_data_disk_attachments.virtual_machine_data_disk_attachments_caching
}

output "virtual_machine_data_disk_attachments_create_option" {
  description = "Map of create_option values across all virtual_machine_data_disk_attachments, keyed the same as var.virtual_machine_data_disk_attachments"
  value       = module.virtual_machine_data_disk_attachments.virtual_machine_data_disk_attachments_create_option
}

output "virtual_machine_data_disk_attachments_lun" {
  description = "Map of lun values across all virtual_machine_data_disk_attachments, keyed the same as var.virtual_machine_data_disk_attachments"
  value       = module.virtual_machine_data_disk_attachments.virtual_machine_data_disk_attachments_lun
}

output "virtual_machine_data_disk_attachments_managed_disk_id" {
  description = "Map of managed_disk_id values across all virtual_machine_data_disk_attachments, keyed the same as var.virtual_machine_data_disk_attachments"
  value       = module.virtual_machine_data_disk_attachments.virtual_machine_data_disk_attachments_managed_disk_id
}

output "virtual_machine_data_disk_attachments_virtual_machine_id" {
  description = "Map of virtual_machine_id values across all virtual_machine_data_disk_attachments, keyed the same as var.virtual_machine_data_disk_attachments"
  value       = module.virtual_machine_data_disk_attachments.virtual_machine_data_disk_attachments_virtual_machine_id
}

output "virtual_machine_data_disk_attachments_write_accelerator_enabled" {
  description = "Map of write_accelerator_enabled values across all virtual_machine_data_disk_attachments, keyed the same as var.virtual_machine_data_disk_attachments"
  value       = module.virtual_machine_data_disk_attachments.virtual_machine_data_disk_attachments_write_accelerator_enabled
}

# --- azurerm_virtual_machine_extension ---
output "virtual_machine_extensions_auto_upgrade_minor_version" {
  description = "Map of auto_upgrade_minor_version values across all virtual_machine_extensions, keyed the same as var.virtual_machine_extensions"
  value       = module.virtual_machine_extensions.virtual_machine_extensions_auto_upgrade_minor_version
}

output "virtual_machine_extensions_automatic_upgrade_enabled" {
  description = "Map of automatic_upgrade_enabled values across all virtual_machine_extensions, keyed the same as var.virtual_machine_extensions"
  value       = module.virtual_machine_extensions.virtual_machine_extensions_automatic_upgrade_enabled
}

output "virtual_machine_extensions_failure_suppression_enabled" {
  description = "Map of failure_suppression_enabled values across all virtual_machine_extensions, keyed the same as var.virtual_machine_extensions"
  value       = module.virtual_machine_extensions.virtual_machine_extensions_failure_suppression_enabled
}

output "virtual_machine_extensions_name" {
  description = "Map of name values across all virtual_machine_extensions, keyed the same as var.virtual_machine_extensions"
  value       = module.virtual_machine_extensions.virtual_machine_extensions_name
}

output "virtual_machine_extensions_protected_settings" {
  description = "Map of protected_settings values across all virtual_machine_extensions, keyed the same as var.virtual_machine_extensions"
  value       = module.virtual_machine_extensions.virtual_machine_extensions_protected_settings
  sensitive   = true
}

output "virtual_machine_extensions_protected_settings_from_key_vault" {
  description = "Map of protected_settings_from_key_vault values across all virtual_machine_extensions, keyed the same as var.virtual_machine_extensions"
  value       = module.virtual_machine_extensions.virtual_machine_extensions_protected_settings_from_key_vault
}

output "virtual_machine_extensions_provision_after_extensions" {
  description = "Map of provision_after_extensions values across all virtual_machine_extensions, keyed the same as var.virtual_machine_extensions"
  value       = module.virtual_machine_extensions.virtual_machine_extensions_provision_after_extensions
}

output "virtual_machine_extensions_publisher" {
  description = "Map of publisher values across all virtual_machine_extensions, keyed the same as var.virtual_machine_extensions"
  value       = module.virtual_machine_extensions.virtual_machine_extensions_publisher
}

output "virtual_machine_extensions_settings" {
  description = "Map of settings values across all virtual_machine_extensions, keyed the same as var.virtual_machine_extensions"
  value       = module.virtual_machine_extensions.virtual_machine_extensions_settings
}

output "virtual_machine_extensions_tags" {
  description = "Map of tags values across all virtual_machine_extensions, keyed the same as var.virtual_machine_extensions"
  value       = module.virtual_machine_extensions.virtual_machine_extensions_tags
}

output "virtual_machine_extensions_type" {
  description = "Map of type values across all virtual_machine_extensions, keyed the same as var.virtual_machine_extensions"
  value       = module.virtual_machine_extensions.virtual_machine_extensions_type
}

output "virtual_machine_extensions_type_handler_version" {
  description = "Map of type_handler_version values across all virtual_machine_extensions, keyed the same as var.virtual_machine_extensions"
  value       = module.virtual_machine_extensions.virtual_machine_extensions_type_handler_version
}

output "virtual_machine_extensions_virtual_machine_id" {
  description = "Map of virtual_machine_id values across all virtual_machine_extensions, keyed the same as var.virtual_machine_extensions"
  value       = module.virtual_machine_extensions.virtual_machine_extensions_virtual_machine_id
}

# --- azurerm_virtual_machine_gallery_application_assignment ---
output "virtual_machine_gallery_application_assignments_configuration_blob_uri" {
  description = "Map of configuration_blob_uri values across all virtual_machine_gallery_application_assignments, keyed the same as var.virtual_machine_gallery_application_assignments"
  value       = module.virtual_machine_gallery_application_assignments.virtual_machine_gallery_application_assignments_configuration_blob_uri
}

output "virtual_machine_gallery_application_assignments_gallery_application_version_id" {
  description = "Map of gallery_application_version_id values across all virtual_machine_gallery_application_assignments, keyed the same as var.virtual_machine_gallery_application_assignments"
  value       = module.virtual_machine_gallery_application_assignments.virtual_machine_gallery_application_assignments_gallery_application_version_id
}

output "virtual_machine_gallery_application_assignments_order" {
  description = "Map of order values across all virtual_machine_gallery_application_assignments, keyed the same as var.virtual_machine_gallery_application_assignments"
  value       = module.virtual_machine_gallery_application_assignments.virtual_machine_gallery_application_assignments_order
}

output "virtual_machine_gallery_application_assignments_tag" {
  description = "Map of tag values across all virtual_machine_gallery_application_assignments, keyed the same as var.virtual_machine_gallery_application_assignments"
  value       = module.virtual_machine_gallery_application_assignments.virtual_machine_gallery_application_assignments_tag
}

output "virtual_machine_gallery_application_assignments_virtual_machine_id" {
  description = "Map of virtual_machine_id values across all virtual_machine_gallery_application_assignments, keyed the same as var.virtual_machine_gallery_application_assignments"
  value       = module.virtual_machine_gallery_application_assignments.virtual_machine_gallery_application_assignments_virtual_machine_id
}

# --- azurerm_virtual_machine_implicit_data_disk_from_source ---
output "virtual_machine_implicit_data_disk_from_sources_caching" {
  description = "Map of caching values across all virtual_machine_implicit_data_disk_from_sources, keyed the same as var.virtual_machine_implicit_data_disk_from_sources"
  value       = module.virtual_machine_implicit_data_disk_from_sources.virtual_machine_implicit_data_disk_from_sources_caching
}

output "virtual_machine_implicit_data_disk_from_sources_create_option" {
  description = "Map of create_option values across all virtual_machine_implicit_data_disk_from_sources, keyed the same as var.virtual_machine_implicit_data_disk_from_sources"
  value       = module.virtual_machine_implicit_data_disk_from_sources.virtual_machine_implicit_data_disk_from_sources_create_option
}

output "virtual_machine_implicit_data_disk_from_sources_disk_size_gb" {
  description = "Map of disk_size_gb values across all virtual_machine_implicit_data_disk_from_sources, keyed the same as var.virtual_machine_implicit_data_disk_from_sources"
  value       = module.virtual_machine_implicit_data_disk_from_sources.virtual_machine_implicit_data_disk_from_sources_disk_size_gb
}

output "virtual_machine_implicit_data_disk_from_sources_lun" {
  description = "Map of lun values across all virtual_machine_implicit_data_disk_from_sources, keyed the same as var.virtual_machine_implicit_data_disk_from_sources"
  value       = module.virtual_machine_implicit_data_disk_from_sources.virtual_machine_implicit_data_disk_from_sources_lun
}

output "virtual_machine_implicit_data_disk_from_sources_name" {
  description = "Map of name values across all virtual_machine_implicit_data_disk_from_sources, keyed the same as var.virtual_machine_implicit_data_disk_from_sources"
  value       = module.virtual_machine_implicit_data_disk_from_sources.virtual_machine_implicit_data_disk_from_sources_name
}

output "virtual_machine_implicit_data_disk_from_sources_source_resource_id" {
  description = "Map of source_resource_id values across all virtual_machine_implicit_data_disk_from_sources, keyed the same as var.virtual_machine_implicit_data_disk_from_sources"
  value       = module.virtual_machine_implicit_data_disk_from_sources.virtual_machine_implicit_data_disk_from_sources_source_resource_id
}

output "virtual_machine_implicit_data_disk_from_sources_virtual_machine_id" {
  description = "Map of virtual_machine_id values across all virtual_machine_implicit_data_disk_from_sources, keyed the same as var.virtual_machine_implicit_data_disk_from_sources"
  value       = module.virtual_machine_implicit_data_disk_from_sources.virtual_machine_implicit_data_disk_from_sources_virtual_machine_id
}

output "virtual_machine_implicit_data_disk_from_sources_write_accelerator_enabled" {
  description = "Map of write_accelerator_enabled values across all virtual_machine_implicit_data_disk_from_sources, keyed the same as var.virtual_machine_implicit_data_disk_from_sources"
  value       = module.virtual_machine_implicit_data_disk_from_sources.virtual_machine_implicit_data_disk_from_sources_write_accelerator_enabled
}

# --- azurerm_virtual_machine_packet_capture ---
output "virtual_machine_packet_captures_filter" {
  description = "Map of filter values across all virtual_machine_packet_captures, keyed the same as var.virtual_machine_packet_captures"
  value       = module.virtual_machine_packet_captures.virtual_machine_packet_captures_filter
}

output "virtual_machine_packet_captures_maximum_bytes_per_packet" {
  description = "Map of maximum_bytes_per_packet values across all virtual_machine_packet_captures, keyed the same as var.virtual_machine_packet_captures"
  value       = module.virtual_machine_packet_captures.virtual_machine_packet_captures_maximum_bytes_per_packet
}

output "virtual_machine_packet_captures_maximum_bytes_per_session" {
  description = "Map of maximum_bytes_per_session values across all virtual_machine_packet_captures, keyed the same as var.virtual_machine_packet_captures"
  value       = module.virtual_machine_packet_captures.virtual_machine_packet_captures_maximum_bytes_per_session
}

output "virtual_machine_packet_captures_maximum_capture_duration_in_seconds" {
  description = "Map of maximum_capture_duration_in_seconds values across all virtual_machine_packet_captures, keyed the same as var.virtual_machine_packet_captures"
  value       = module.virtual_machine_packet_captures.virtual_machine_packet_captures_maximum_capture_duration_in_seconds
}

output "virtual_machine_packet_captures_name" {
  description = "Map of name values across all virtual_machine_packet_captures, keyed the same as var.virtual_machine_packet_captures"
  value       = module.virtual_machine_packet_captures.virtual_machine_packet_captures_name
}

output "virtual_machine_packet_captures_network_watcher_id" {
  description = "Map of network_watcher_id values across all virtual_machine_packet_captures, keyed the same as var.virtual_machine_packet_captures"
  value       = module.virtual_machine_packet_captures.virtual_machine_packet_captures_network_watcher_id
}

output "virtual_machine_packet_captures_storage_location" {
  description = "Map of storage_location values across all virtual_machine_packet_captures, keyed the same as var.virtual_machine_packet_captures"
  value       = module.virtual_machine_packet_captures.virtual_machine_packet_captures_storage_location
}

output "virtual_machine_packet_captures_virtual_machine_id" {
  description = "Map of virtual_machine_id values across all virtual_machine_packet_captures, keyed the same as var.virtual_machine_packet_captures"
  value       = module.virtual_machine_packet_captures.virtual_machine_packet_captures_virtual_machine_id
}

# --- azurerm_virtual_machine_run_command ---
output "virtual_machine_run_commands_error_blob_managed_identity" {
  description = "Map of error_blob_managed_identity values across all virtual_machine_run_commands, keyed the same as var.virtual_machine_run_commands"
  value       = module.virtual_machine_run_commands.virtual_machine_run_commands_error_blob_managed_identity
  sensitive   = true
}

output "virtual_machine_run_commands_error_blob_uri" {
  description = "Map of error_blob_uri values across all virtual_machine_run_commands, keyed the same as var.virtual_machine_run_commands"
  value       = module.virtual_machine_run_commands.virtual_machine_run_commands_error_blob_uri
}

output "virtual_machine_run_commands_instance_view" {
  description = "Map of instance_view values across all virtual_machine_run_commands, keyed the same as var.virtual_machine_run_commands"
  value       = module.virtual_machine_run_commands.virtual_machine_run_commands_instance_view
}

output "virtual_machine_run_commands_location" {
  description = "Map of location values across all virtual_machine_run_commands, keyed the same as var.virtual_machine_run_commands"
  value       = module.virtual_machine_run_commands.virtual_machine_run_commands_location
}

output "virtual_machine_run_commands_name" {
  description = "Map of name values across all virtual_machine_run_commands, keyed the same as var.virtual_machine_run_commands"
  value       = module.virtual_machine_run_commands.virtual_machine_run_commands_name
}

output "virtual_machine_run_commands_output_blob_managed_identity" {
  description = "Map of output_blob_managed_identity values across all virtual_machine_run_commands, keyed the same as var.virtual_machine_run_commands"
  value       = module.virtual_machine_run_commands.virtual_machine_run_commands_output_blob_managed_identity
  sensitive   = true
}

output "virtual_machine_run_commands_output_blob_uri" {
  description = "Map of output_blob_uri values across all virtual_machine_run_commands, keyed the same as var.virtual_machine_run_commands"
  value       = module.virtual_machine_run_commands.virtual_machine_run_commands_output_blob_uri
}

output "virtual_machine_run_commands_parameter" {
  description = "Map of parameter values across all virtual_machine_run_commands, keyed the same as var.virtual_machine_run_commands"
  value       = module.virtual_machine_run_commands.virtual_machine_run_commands_parameter
}

output "virtual_machine_run_commands_protected_parameter" {
  description = "Map of protected_parameter values across all virtual_machine_run_commands, keyed the same as var.virtual_machine_run_commands"
  value       = module.virtual_machine_run_commands.virtual_machine_run_commands_protected_parameter
  sensitive   = true
}

output "virtual_machine_run_commands_run_as_password" {
  description = "Map of run_as_password values across all virtual_machine_run_commands, keyed the same as var.virtual_machine_run_commands"
  value       = module.virtual_machine_run_commands.virtual_machine_run_commands_run_as_password
  sensitive   = true
}

output "virtual_machine_run_commands_run_as_user" {
  description = "Map of run_as_user values across all virtual_machine_run_commands, keyed the same as var.virtual_machine_run_commands"
  value       = module.virtual_machine_run_commands.virtual_machine_run_commands_run_as_user
}

output "virtual_machine_run_commands_source" {
  description = "Map of source values across all virtual_machine_run_commands, keyed the same as var.virtual_machine_run_commands"
  value       = module.virtual_machine_run_commands.virtual_machine_run_commands_source
  sensitive   = true
}

output "virtual_machine_run_commands_tags" {
  description = "Map of tags values across all virtual_machine_run_commands, keyed the same as var.virtual_machine_run_commands"
  value       = module.virtual_machine_run_commands.virtual_machine_run_commands_tags
}

output "virtual_machine_run_commands_virtual_machine_id" {
  description = "Map of virtual_machine_id values across all virtual_machine_run_commands, keyed the same as var.virtual_machine_run_commands"
  value       = module.virtual_machine_run_commands.virtual_machine_run_commands_virtual_machine_id
}


