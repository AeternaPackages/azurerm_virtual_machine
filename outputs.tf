# --- azurerm_virtual_machine ---
output "virtual_machines" {
  description = "All virtual_machine resources"
  value       = module.virtual_machines.virtual_machines
  sensitive   = true
}
output "virtual_machines_additional_capabilities" {
  description = "List of additional_capabilities values across all virtual_machines"
  value       = [for k, v in module.virtual_machines.virtual_machines : v.additional_capabilities]
}
output "virtual_machines_availability_set_id" {
  description = "List of availability_set_id values across all virtual_machines"
  value       = [for k, v in module.virtual_machines.virtual_machines : v.availability_set_id]
}
output "virtual_machines_boot_diagnostics" {
  description = "List of boot_diagnostics values across all virtual_machines"
  value       = [for k, v in module.virtual_machines.virtual_machines : v.boot_diagnostics]
}
output "virtual_machines_delete_data_disks_on_termination" {
  description = "List of delete_data_disks_on_termination values across all virtual_machines"
  value       = [for k, v in module.virtual_machines.virtual_machines : v.delete_data_disks_on_termination]
}
output "virtual_machines_delete_os_disk_on_termination" {
  description = "List of delete_os_disk_on_termination values across all virtual_machines"
  value       = [for k, v in module.virtual_machines.virtual_machines : v.delete_os_disk_on_termination]
}
output "virtual_machines_identity" {
  description = "List of identity values across all virtual_machines"
  value       = [for k, v in module.virtual_machines.virtual_machines : v.identity]
}
output "virtual_machines_license_type" {
  description = "List of license_type values across all virtual_machines"
  value       = [for k, v in module.virtual_machines.virtual_machines : v.license_type]
}
output "virtual_machines_location" {
  description = "List of location values across all virtual_machines"
  value       = [for k, v in module.virtual_machines.virtual_machines : v.location]
}
output "virtual_machines_name" {
  description = "List of name values across all virtual_machines"
  value       = [for k, v in module.virtual_machines.virtual_machines : v.name]
}
output "virtual_machines_network_interface_ids" {
  description = "List of network_interface_ids values across all virtual_machines"
  value       = [for k, v in module.virtual_machines.virtual_machines : v.network_interface_ids]
}
output "virtual_machines_os_profile" {
  description = "List of os_profile values across all virtual_machines"
  value       = [for k, v in module.virtual_machines.virtual_machines : v.os_profile]
  sensitive   = true
}
output "virtual_machines_os_profile_linux_config" {
  description = "List of os_profile_linux_config values across all virtual_machines"
  value       = [for k, v in module.virtual_machines.virtual_machines : v.os_profile_linux_config]
}
output "virtual_machines_os_profile_secrets" {
  description = "List of os_profile_secrets values across all virtual_machines"
  value       = [for k, v in module.virtual_machines.virtual_machines : v.os_profile_secrets]
}
output "virtual_machines_os_profile_windows_config" {
  description = "List of os_profile_windows_config values across all virtual_machines"
  value       = [for k, v in module.virtual_machines.virtual_machines : v.os_profile_windows_config]
  sensitive   = true
}
output "virtual_machines_plan" {
  description = "List of plan values across all virtual_machines"
  value       = [for k, v in module.virtual_machines.virtual_machines : v.plan]
}
output "virtual_machines_primary_network_interface_id" {
  description = "List of primary_network_interface_id values across all virtual_machines"
  value       = [for k, v in module.virtual_machines.virtual_machines : v.primary_network_interface_id]
}
output "virtual_machines_proximity_placement_group_id" {
  description = "List of proximity_placement_group_id values across all virtual_machines"
  value       = [for k, v in module.virtual_machines.virtual_machines : v.proximity_placement_group_id]
}
output "virtual_machines_resource_group_name" {
  description = "List of resource_group_name values across all virtual_machines"
  value       = [for k, v in module.virtual_machines.virtual_machines : v.resource_group_name]
}
output "virtual_machines_storage_data_disk" {
  description = "List of storage_data_disk values across all virtual_machines"
  value       = [for k, v in module.virtual_machines.virtual_machines : v.storage_data_disk]
}
output "virtual_machines_storage_image_reference" {
  description = "List of storage_image_reference values across all virtual_machines"
  value       = [for k, v in module.virtual_machines.virtual_machines : v.storage_image_reference]
}
output "virtual_machines_storage_os_disk" {
  description = "List of storage_os_disk values across all virtual_machines"
  value       = [for k, v in module.virtual_machines.virtual_machines : v.storage_os_disk]
}
output "virtual_machines_tags" {
  description = "List of tags values across all virtual_machines"
  value       = [for k, v in module.virtual_machines.virtual_machines : v.tags]
}
output "virtual_machines_vm_size" {
  description = "List of vm_size values across all virtual_machines"
  value       = [for k, v in module.virtual_machines.virtual_machines : v.vm_size]
}
output "virtual_machines_zones" {
  description = "List of zones values across all virtual_machines"
  value       = [for k, v in module.virtual_machines.virtual_machines : v.zones]
}


# --- azurerm_virtual_machine_automanage_configuration_assignment ---
output "virtual_machine_automanage_configuration_assignments" {
  description = "All virtual_machine_automanage_configuration_assignment resources"
  value       = module.virtual_machine_automanage_configuration_assignments.virtual_machine_automanage_configuration_assignments
}
output "virtual_machine_automanage_configuration_assignments_configuration_id" {
  description = "List of configuration_id values across all virtual_machine_automanage_configuration_assignments"
  value       = [for k, v in module.virtual_machine_automanage_configuration_assignments.virtual_machine_automanage_configuration_assignments : v.configuration_id]
}
output "virtual_machine_automanage_configuration_assignments_virtual_machine_id" {
  description = "List of virtual_machine_id values across all virtual_machine_automanage_configuration_assignments"
  value       = [for k, v in module.virtual_machine_automanage_configuration_assignments.virtual_machine_automanage_configuration_assignments : v.virtual_machine_id]
}


# --- azurerm_virtual_machine_data_disk_attachment ---
output "virtual_machine_data_disk_attachments" {
  description = "All virtual_machine_data_disk_attachment resources"
  value       = module.virtual_machine_data_disk_attachments.virtual_machine_data_disk_attachments
}
output "virtual_machine_data_disk_attachments_caching" {
  description = "List of caching values across all virtual_machine_data_disk_attachments"
  value       = [for k, v in module.virtual_machine_data_disk_attachments.virtual_machine_data_disk_attachments : v.caching]
}
output "virtual_machine_data_disk_attachments_create_option" {
  description = "List of create_option values across all virtual_machine_data_disk_attachments"
  value       = [for k, v in module.virtual_machine_data_disk_attachments.virtual_machine_data_disk_attachments : v.create_option]
}
output "virtual_machine_data_disk_attachments_lun" {
  description = "List of lun values across all virtual_machine_data_disk_attachments"
  value       = [for k, v in module.virtual_machine_data_disk_attachments.virtual_machine_data_disk_attachments : v.lun]
}
output "virtual_machine_data_disk_attachments_managed_disk_id" {
  description = "List of managed_disk_id values across all virtual_machine_data_disk_attachments"
  value       = [for k, v in module.virtual_machine_data_disk_attachments.virtual_machine_data_disk_attachments : v.managed_disk_id]
}
output "virtual_machine_data_disk_attachments_virtual_machine_id" {
  description = "List of virtual_machine_id values across all virtual_machine_data_disk_attachments"
  value       = [for k, v in module.virtual_machine_data_disk_attachments.virtual_machine_data_disk_attachments : v.virtual_machine_id]
}
output "virtual_machine_data_disk_attachments_write_accelerator_enabled" {
  description = "List of write_accelerator_enabled values across all virtual_machine_data_disk_attachments"
  value       = [for k, v in module.virtual_machine_data_disk_attachments.virtual_machine_data_disk_attachments : v.write_accelerator_enabled]
}


# --- azurerm_virtual_machine_extension ---
output "virtual_machine_extensions" {
  description = "All virtual_machine_extension resources"
  value       = module.virtual_machine_extensions.virtual_machine_extensions
  sensitive   = true
}
output "virtual_machine_extensions_auto_upgrade_minor_version" {
  description = "List of auto_upgrade_minor_version values across all virtual_machine_extensions"
  value       = [for k, v in module.virtual_machine_extensions.virtual_machine_extensions : v.auto_upgrade_minor_version]
}
output "virtual_machine_extensions_automatic_upgrade_enabled" {
  description = "List of automatic_upgrade_enabled values across all virtual_machine_extensions"
  value       = [for k, v in module.virtual_machine_extensions.virtual_machine_extensions : v.automatic_upgrade_enabled]
}
output "virtual_machine_extensions_failure_suppression_enabled" {
  description = "List of failure_suppression_enabled values across all virtual_machine_extensions"
  value       = [for k, v in module.virtual_machine_extensions.virtual_machine_extensions : v.failure_suppression_enabled]
}
output "virtual_machine_extensions_name" {
  description = "List of name values across all virtual_machine_extensions"
  value       = [for k, v in module.virtual_machine_extensions.virtual_machine_extensions : v.name]
}
output "virtual_machine_extensions_protected_settings" {
  description = "List of protected_settings values across all virtual_machine_extensions"
  value       = [for k, v in module.virtual_machine_extensions.virtual_machine_extensions : v.protected_settings]
  sensitive   = true
}
output "virtual_machine_extensions_protected_settings_from_key_vault" {
  description = "List of protected_settings_from_key_vault values across all virtual_machine_extensions"
  value       = [for k, v in module.virtual_machine_extensions.virtual_machine_extensions : v.protected_settings_from_key_vault]
}
output "virtual_machine_extensions_provision_after_extensions" {
  description = "List of provision_after_extensions values across all virtual_machine_extensions"
  value       = [for k, v in module.virtual_machine_extensions.virtual_machine_extensions : v.provision_after_extensions]
}
output "virtual_machine_extensions_publisher" {
  description = "List of publisher values across all virtual_machine_extensions"
  value       = [for k, v in module.virtual_machine_extensions.virtual_machine_extensions : v.publisher]
}
output "virtual_machine_extensions_settings" {
  description = "List of settings values across all virtual_machine_extensions"
  value       = [for k, v in module.virtual_machine_extensions.virtual_machine_extensions : v.settings]
}
output "virtual_machine_extensions_tags" {
  description = "List of tags values across all virtual_machine_extensions"
  value       = [for k, v in module.virtual_machine_extensions.virtual_machine_extensions : v.tags]
}
output "virtual_machine_extensions_type" {
  description = "List of type values across all virtual_machine_extensions"
  value       = [for k, v in module.virtual_machine_extensions.virtual_machine_extensions : v.type]
}
output "virtual_machine_extensions_type_handler_version" {
  description = "List of type_handler_version values across all virtual_machine_extensions"
  value       = [for k, v in module.virtual_machine_extensions.virtual_machine_extensions : v.type_handler_version]
}
output "virtual_machine_extensions_virtual_machine_id" {
  description = "List of virtual_machine_id values across all virtual_machine_extensions"
  value       = [for k, v in module.virtual_machine_extensions.virtual_machine_extensions : v.virtual_machine_id]
}


# --- azurerm_virtual_machine_gallery_application_assignment ---
output "virtual_machine_gallery_application_assignments" {
  description = "All virtual_machine_gallery_application_assignment resources"
  value       = module.virtual_machine_gallery_application_assignments.virtual_machine_gallery_application_assignments
}
output "virtual_machine_gallery_application_assignments_configuration_blob_uri" {
  description = "List of configuration_blob_uri values across all virtual_machine_gallery_application_assignments"
  value       = [for k, v in module.virtual_machine_gallery_application_assignments.virtual_machine_gallery_application_assignments : v.configuration_blob_uri]
}
output "virtual_machine_gallery_application_assignments_gallery_application_version_id" {
  description = "List of gallery_application_version_id values across all virtual_machine_gallery_application_assignments"
  value       = [for k, v in module.virtual_machine_gallery_application_assignments.virtual_machine_gallery_application_assignments : v.gallery_application_version_id]
}
output "virtual_machine_gallery_application_assignments_order" {
  description = "List of order values across all virtual_machine_gallery_application_assignments"
  value       = [for k, v in module.virtual_machine_gallery_application_assignments.virtual_machine_gallery_application_assignments : v.order]
}
output "virtual_machine_gallery_application_assignments_tag" {
  description = "List of tag values across all virtual_machine_gallery_application_assignments"
  value       = [for k, v in module.virtual_machine_gallery_application_assignments.virtual_machine_gallery_application_assignments : v.tag]
}
output "virtual_machine_gallery_application_assignments_virtual_machine_id" {
  description = "List of virtual_machine_id values across all virtual_machine_gallery_application_assignments"
  value       = [for k, v in module.virtual_machine_gallery_application_assignments.virtual_machine_gallery_application_assignments : v.virtual_machine_id]
}


# --- azurerm_virtual_machine_implicit_data_disk_from_source ---
output "virtual_machine_implicit_data_disk_from_sources" {
  description = "All virtual_machine_implicit_data_disk_from_source resources"
  value       = module.virtual_machine_implicit_data_disk_from_sources.virtual_machine_implicit_data_disk_from_sources
}
output "virtual_machine_implicit_data_disk_from_sources_caching" {
  description = "List of caching values across all virtual_machine_implicit_data_disk_from_sources"
  value       = [for k, v in module.virtual_machine_implicit_data_disk_from_sources.virtual_machine_implicit_data_disk_from_sources : v.caching]
}
output "virtual_machine_implicit_data_disk_from_sources_create_option" {
  description = "List of create_option values across all virtual_machine_implicit_data_disk_from_sources"
  value       = [for k, v in module.virtual_machine_implicit_data_disk_from_sources.virtual_machine_implicit_data_disk_from_sources : v.create_option]
}
output "virtual_machine_implicit_data_disk_from_sources_disk_size_gb" {
  description = "List of disk_size_gb values across all virtual_machine_implicit_data_disk_from_sources"
  value       = [for k, v in module.virtual_machine_implicit_data_disk_from_sources.virtual_machine_implicit_data_disk_from_sources : v.disk_size_gb]
}
output "virtual_machine_implicit_data_disk_from_sources_lun" {
  description = "List of lun values across all virtual_machine_implicit_data_disk_from_sources"
  value       = [for k, v in module.virtual_machine_implicit_data_disk_from_sources.virtual_machine_implicit_data_disk_from_sources : v.lun]
}
output "virtual_machine_implicit_data_disk_from_sources_name" {
  description = "List of name values across all virtual_machine_implicit_data_disk_from_sources"
  value       = [for k, v in module.virtual_machine_implicit_data_disk_from_sources.virtual_machine_implicit_data_disk_from_sources : v.name]
}
output "virtual_machine_implicit_data_disk_from_sources_source_resource_id" {
  description = "List of source_resource_id values across all virtual_machine_implicit_data_disk_from_sources"
  value       = [for k, v in module.virtual_machine_implicit_data_disk_from_sources.virtual_machine_implicit_data_disk_from_sources : v.source_resource_id]
}
output "virtual_machine_implicit_data_disk_from_sources_virtual_machine_id" {
  description = "List of virtual_machine_id values across all virtual_machine_implicit_data_disk_from_sources"
  value       = [for k, v in module.virtual_machine_implicit_data_disk_from_sources.virtual_machine_implicit_data_disk_from_sources : v.virtual_machine_id]
}
output "virtual_machine_implicit_data_disk_from_sources_write_accelerator_enabled" {
  description = "List of write_accelerator_enabled values across all virtual_machine_implicit_data_disk_from_sources"
  value       = [for k, v in module.virtual_machine_implicit_data_disk_from_sources.virtual_machine_implicit_data_disk_from_sources : v.write_accelerator_enabled]
}


# --- azurerm_virtual_machine_packet_capture ---
output "virtual_machine_packet_captures" {
  description = "All virtual_machine_packet_capture resources"
  value       = module.virtual_machine_packet_captures.virtual_machine_packet_captures
}
output "virtual_machine_packet_captures_filter" {
  description = "List of filter values across all virtual_machine_packet_captures"
  value       = [for k, v in module.virtual_machine_packet_captures.virtual_machine_packet_captures : v.filter]
}
output "virtual_machine_packet_captures_maximum_bytes_per_packet" {
  description = "List of maximum_bytes_per_packet values across all virtual_machine_packet_captures"
  value       = [for k, v in module.virtual_machine_packet_captures.virtual_machine_packet_captures : v.maximum_bytes_per_packet]
}
output "virtual_machine_packet_captures_maximum_bytes_per_session" {
  description = "List of maximum_bytes_per_session values across all virtual_machine_packet_captures"
  value       = [for k, v in module.virtual_machine_packet_captures.virtual_machine_packet_captures : v.maximum_bytes_per_session]
}
output "virtual_machine_packet_captures_maximum_capture_duration_in_seconds" {
  description = "List of maximum_capture_duration_in_seconds values across all virtual_machine_packet_captures"
  value       = [for k, v in module.virtual_machine_packet_captures.virtual_machine_packet_captures : v.maximum_capture_duration_in_seconds]
}
output "virtual_machine_packet_captures_name" {
  description = "List of name values across all virtual_machine_packet_captures"
  value       = [for k, v in module.virtual_machine_packet_captures.virtual_machine_packet_captures : v.name]
}
output "virtual_machine_packet_captures_network_watcher_id" {
  description = "List of network_watcher_id values across all virtual_machine_packet_captures"
  value       = [for k, v in module.virtual_machine_packet_captures.virtual_machine_packet_captures : v.network_watcher_id]
}
output "virtual_machine_packet_captures_storage_location" {
  description = "List of storage_location values across all virtual_machine_packet_captures"
  value       = [for k, v in module.virtual_machine_packet_captures.virtual_machine_packet_captures : v.storage_location]
}
output "virtual_machine_packet_captures_virtual_machine_id" {
  description = "List of virtual_machine_id values across all virtual_machine_packet_captures"
  value       = [for k, v in module.virtual_machine_packet_captures.virtual_machine_packet_captures : v.virtual_machine_id]
}


# --- azurerm_virtual_machine_run_command ---
output "virtual_machine_run_commands" {
  description = "All virtual_machine_run_command resources"
  value       = module.virtual_machine_run_commands.virtual_machine_run_commands
  sensitive   = true
}
output "virtual_machine_run_commands_error_blob_managed_identity" {
  description = "List of error_blob_managed_identity values across all virtual_machine_run_commands"
  value       = [for k, v in module.virtual_machine_run_commands.virtual_machine_run_commands : v.error_blob_managed_identity]
  sensitive   = true
}
output "virtual_machine_run_commands_error_blob_uri" {
  description = "List of error_blob_uri values across all virtual_machine_run_commands"
  value       = [for k, v in module.virtual_machine_run_commands.virtual_machine_run_commands : v.error_blob_uri]
}
output "virtual_machine_run_commands_instance_view" {
  description = "List of instance_view values across all virtual_machine_run_commands"
  value       = [for k, v in module.virtual_machine_run_commands.virtual_machine_run_commands : v.instance_view]
}
output "virtual_machine_run_commands_location" {
  description = "List of location values across all virtual_machine_run_commands"
  value       = [for k, v in module.virtual_machine_run_commands.virtual_machine_run_commands : v.location]
}
output "virtual_machine_run_commands_name" {
  description = "List of name values across all virtual_machine_run_commands"
  value       = [for k, v in module.virtual_machine_run_commands.virtual_machine_run_commands : v.name]
}
output "virtual_machine_run_commands_output_blob_managed_identity" {
  description = "List of output_blob_managed_identity values across all virtual_machine_run_commands"
  value       = [for k, v in module.virtual_machine_run_commands.virtual_machine_run_commands : v.output_blob_managed_identity]
  sensitive   = true
}
output "virtual_machine_run_commands_output_blob_uri" {
  description = "List of output_blob_uri values across all virtual_machine_run_commands"
  value       = [for k, v in module.virtual_machine_run_commands.virtual_machine_run_commands : v.output_blob_uri]
}
output "virtual_machine_run_commands_parameter" {
  description = "List of parameter values across all virtual_machine_run_commands"
  value       = [for k, v in module.virtual_machine_run_commands.virtual_machine_run_commands : v.parameter]
}
output "virtual_machine_run_commands_protected_parameter" {
  description = "List of protected_parameter values across all virtual_machine_run_commands"
  value       = [for k, v in module.virtual_machine_run_commands.virtual_machine_run_commands : v.protected_parameter]
  sensitive   = true
}
output "virtual_machine_run_commands_run_as_password" {
  description = "List of run_as_password values across all virtual_machine_run_commands"
  value       = [for k, v in module.virtual_machine_run_commands.virtual_machine_run_commands : v.run_as_password]
  sensitive   = true
}
output "virtual_machine_run_commands_run_as_user" {
  description = "List of run_as_user values across all virtual_machine_run_commands"
  value       = [for k, v in module.virtual_machine_run_commands.virtual_machine_run_commands : v.run_as_user]
}
output "virtual_machine_run_commands_source" {
  description = "List of source values across all virtual_machine_run_commands"
  value       = [for k, v in module.virtual_machine_run_commands.virtual_machine_run_commands : v.source]
  sensitive   = true
}
output "virtual_machine_run_commands_tags" {
  description = "List of tags values across all virtual_machine_run_commands"
  value       = [for k, v in module.virtual_machine_run_commands.virtual_machine_run_commands : v.tags]
}
output "virtual_machine_run_commands_virtual_machine_id" {
  description = "List of virtual_machine_id values across all virtual_machine_run_commands"
  value       = [for k, v in module.virtual_machine_run_commands.virtual_machine_run_commands : v.virtual_machine_id]
}



