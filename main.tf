locals {
  virtual_machines = { for k1, v1 in var.virtual_machines : k1 => { additional_capabilities = v1.additional_capabilities, availability_set_id = v1.availability_set_id, boot_diagnostics = v1.boot_diagnostics, delete_data_disks_on_termination = v1.delete_data_disks_on_termination, delete_os_disk_on_termination = v1.delete_os_disk_on_termination, identity = v1.identity, license_type = v1.license_type, location = v1.location, name = v1.name, network_interface_ids = v1.network_interface_ids, os_profile = v1.os_profile, os_profile_linux_config = v1.os_profile_linux_config, os_profile_secrets = v1.os_profile_secrets, os_profile_windows_config = v1.os_profile_windows_config, plan = v1.plan, primary_network_interface_id = v1.primary_network_interface_id, proximity_placement_group_id = v1.proximity_placement_group_id, resource_group_name = v1.resource_group_name, storage_data_disk = v1.storage_data_disk, storage_image_reference = v1.storage_image_reference, storage_os_disk = v1.storage_os_disk, tags = v1.tags, vm_size = v1.vm_size, zones = v1.zones } }

  virtual_machine_automanage_configuration_assignments = merge([
    for k1, v1 in var.virtual_machines : {
      for k2, v2 in coalesce(v1.virtual_machine_automanage_configuration_assignments, {}) :
      "${k1}/${k2}" => merge(v2, {
        virtual_machine_id = module.virtual_machines.virtual_machines_id["${k1}"]
      })
    }
  ]...)

  virtual_machine_data_disk_attachments = merge([
    for k1, v1 in var.virtual_machines : {
      for k2, v2 in coalesce(v1.virtual_machine_data_disk_attachments, {}) :
      "${k1}/${k2}" => merge(v2, {
        virtual_machine_id = module.virtual_machines.virtual_machines_id["${k1}"]
      })
    }
  ]...)

  virtual_machine_extensions = merge([
    for k1, v1 in var.virtual_machines : {
      for k2, v2 in coalesce(v1.virtual_machine_extensions, {}) :
      "${k1}/${k2}" => merge(v2, {
        virtual_machine_id = module.virtual_machines.virtual_machines_id["${k1}"]
      })
    }
  ]...)

  virtual_machine_gallery_application_assignments = merge([
    for k1, v1 in var.virtual_machines : {
      for k2, v2 in coalesce(v1.virtual_machine_gallery_application_assignments, {}) :
      "${k1}/${k2}" => merge(v2, {
        virtual_machine_id = module.virtual_machines.virtual_machines_id["${k1}"]
      })
    }
  ]...)

  virtual_machine_implicit_data_disk_from_sources = merge([
    for k1, v1 in var.virtual_machines : {
      for k2, v2 in coalesce(v1.virtual_machine_implicit_data_disk_from_sources, {}) :
      "${k1}/${k2}" => merge(v2, {
        virtual_machine_id = module.virtual_machines.virtual_machines_id["${k1}"]
      })
    }
  ]...)

  virtual_machine_packet_captures = merge([
    for k1, v1 in var.virtual_machines : {
      for k2, v2 in coalesce(v1.virtual_machine_packet_captures, {}) :
      "${k1}/${k2}" => merge(v2, {
        virtual_machine_id = module.virtual_machines.virtual_machines_id["${k1}"]
      })
    }
  ]...)

  virtual_machine_run_commands = merge([
    for k1, v1 in var.virtual_machines : {
      for k2, v2 in coalesce(v1.virtual_machine_run_commands, {}) :
      "${k1}/${k2}" => merge(v2, {
        virtual_machine_id = module.virtual_machines.virtual_machines_id["${k1}"]
      })
    }
  ]...)
}

module "virtual_machines" {
  source           = "git::https://github.com/AeternaModules/azurerm_virtual_machine.git?ref=v5.0.1"
  virtual_machines = local.virtual_machines
}

module "virtual_machine_automanage_configuration_assignments" {
  source                                               = "git::https://github.com/AeternaModules/azurerm_virtual_machine_automanage_configuration_assignment.git?ref=v5.0.1"
  virtual_machine_automanage_configuration_assignments = local.virtual_machine_automanage_configuration_assignments
  depends_on                                           = [module.virtual_machines]
}

module "virtual_machine_data_disk_attachments" {
  source                                = "git::https://github.com/AeternaModules/azurerm_virtual_machine_data_disk_attachment.git?ref=v5.0.1"
  virtual_machine_data_disk_attachments = local.virtual_machine_data_disk_attachments
  depends_on                            = [module.virtual_machines]
}

module "virtual_machine_extensions" {
  source                     = "git::https://github.com/AeternaModules/azurerm_virtual_machine_extension.git?ref=v5.0.1"
  virtual_machine_extensions = local.virtual_machine_extensions
  depends_on                 = [module.virtual_machines]
}

module "virtual_machine_gallery_application_assignments" {
  source                                          = "git::https://github.com/AeternaModules/azurerm_virtual_machine_gallery_application_assignment.git?ref=v5.0.1"
  virtual_machine_gallery_application_assignments = local.virtual_machine_gallery_application_assignments
  depends_on                                      = [module.virtual_machines]
}

module "virtual_machine_implicit_data_disk_from_sources" {
  source                                          = "git::https://github.com/AeternaModules/azurerm_virtual_machine_implicit_data_disk_from_source.git?ref=v5.0.1"
  virtual_machine_implicit_data_disk_from_sources = local.virtual_machine_implicit_data_disk_from_sources
  depends_on                                      = [module.virtual_machines]
}

module "virtual_machine_packet_captures" {
  source                          = "git::https://github.com/AeternaModules/azurerm_virtual_machine_packet_capture.git?ref=v5.0.1"
  virtual_machine_packet_captures = local.virtual_machine_packet_captures
  depends_on                      = [module.virtual_machines]
}

module "virtual_machine_run_commands" {
  source                       = "git::https://github.com/AeternaModules/azurerm_virtual_machine_run_command.git?ref=v5.0.1"
  virtual_machine_run_commands = local.virtual_machine_run_commands
  depends_on                   = [module.virtual_machines]
}

