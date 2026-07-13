variable "virtual_machines" {
  description = <<EOT
Map of virtual_machines, attributes below
Required:
    - location
    - name
    - network_interface_ids
    - resource_group_name
    - vm_size
    - storage_os_disk (block)
Optional:
    - availability_set_id
    - delete_data_disks_on_termination
    - delete_os_disk_on_termination
    - license_type
    - primary_network_interface_id
    - proximity_placement_group_id
    - tags
    - zones
    - additional_capabilities (block)
    - boot_diagnostics (block)
    - identity (block)
    - os_profile (block)
    - os_profile_linux_config (block)
    - os_profile_secrets (block)
    - os_profile_windows_config (block)
    - plan (block)
    - storage_data_disk (block)
    - storage_image_reference (block)
Nested virtual_machine_automanage_configuration_assignments (azurerm_virtual_machine_automanage_configuration_assignment):
    Required:
        - configuration_id
Nested virtual_machine_data_disk_attachments (azurerm_virtual_machine_data_disk_attachment):
    Required:
        - caching
        - lun
        - managed_disk_id
    Optional:
        - create_option
        - write_accelerator_enabled
Nested virtual_machine_extensions (azurerm_virtual_machine_extension):
    Required:
        - name
        - publisher
        - type
        - type_handler_version
    Optional:
        - auto_upgrade_minor_version
        - automatic_upgrade_enabled
        - failure_suppression_enabled
        - protected_settings
        - protected_settings_key_vault_id (alternative to protected_settings - read from Key Vault instead)
        - protected_settings_key_vault_secret_name (alternative to protected_settings - read from Key Vault instead)
        - provision_after_extensions
        - settings
        - tags
        - protected_settings_from_key_vault (block)
Nested virtual_machine_gallery_application_assignments (azurerm_virtual_machine_gallery_application_assignment):
    Required:
        - gallery_application_version_id
    Optional:
        - configuration_blob_uri
        - order
        - tag
Nested virtual_machine_implicit_data_disk_from_sources (azurerm_virtual_machine_implicit_data_disk_from_source):
    Required:
        - create_option
        - disk_size_gb
        - lun
        - name
        - source_resource_id
    Optional:
        - caching
        - write_accelerator_enabled
Nested virtual_machine_packet_captures (azurerm_virtual_machine_packet_capture):
    Required:
        - name
        - network_watcher_id
        - storage_location (block)
    Optional:
        - maximum_bytes_per_packet
        - maximum_bytes_per_session
        - maximum_capture_duration_in_seconds
        - filter (block)
Nested virtual_machine_run_commands (azurerm_virtual_machine_run_command):
    Required:
        - location
        - name
        - source (block)
    Optional:
        - error_blob_uri
        - output_blob_uri
        - run_as_password
        - run_as_password_key_vault_id (alternative to run_as_password - read from Key Vault instead)
        - run_as_password_key_vault_secret_name (alternative to run_as_password - read from Key Vault instead)
        - run_as_user
        - tags
        - error_blob_managed_identity (block)
        - output_blob_managed_identity (block)
        - parameter (block)
        - protected_parameter (block)
EOT

  type = map(object({
    location                         = string
    name                             = string
    network_interface_ids            = list(string)
    resource_group_name              = string
    vm_size                          = string
    availability_set_id              = optional(string)
    delete_data_disks_on_termination = optional(bool)
    delete_os_disk_on_termination    = optional(bool)
    license_type                     = optional(string)
    primary_network_interface_id     = optional(string)
    proximity_placement_group_id     = optional(string)
    tags                             = optional(map(string))
    zones                            = optional(list(string))
    storage_os_disk = object({
      caching                   = optional(string)
      create_option             = string
      disk_size_gb              = optional(number)
      image_uri                 = optional(string)
      managed_disk_id           = optional(string)
      managed_disk_type         = optional(string)
      name                      = string
      os_type                   = optional(string)
      vhd_uri                   = optional(string)
      write_accelerator_enabled = optional(bool)
    })
    additional_capabilities = optional(object({
      ultra_ssd_enabled = bool
    }))
    boot_diagnostics = optional(object({
      enabled     = bool
      storage_uri = string
    }))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    os_profile = optional(object({
      admin_password = optional(string)
      admin_username = string
      computer_name  = string
      custom_data    = optional(string)
    }))
    os_profile_linux_config = optional(object({
      disable_password_authentication = bool
      ssh_keys = optional(list(object({
        key_data = string
        path     = string
      })))
    }))
    os_profile_secrets = optional(list(object({
      source_vault_id = string
      vault_certificates = optional(list(object({
        certificate_store = optional(string)
        certificate_url   = string
      })))
    })))
    os_profile_windows_config = optional(object({
      additional_unattend_config = optional(list(object({
        component    = string
        content      = string
        pass         = string
        setting_name = string
      })))
      enable_automatic_upgrades = optional(bool)
      provision_vm_agent        = optional(bool)
      timezone                  = optional(string)
      winrm = optional(list(object({
        certificate_url = optional(string)
        protocol        = string
      })))
    }))
    plan = optional(object({
      name      = string
      product   = string
      publisher = string
    }))
    storage_data_disk = optional(list(object({
      caching                   = optional(string)
      create_option             = string
      disk_size_gb              = optional(number)
      lun                       = number
      managed_disk_id           = optional(string)
      managed_disk_type         = optional(string)
      name                      = string
      vhd_uri                   = optional(string)
      write_accelerator_enabled = optional(bool)
    })))
    storage_image_reference = optional(object({
      id        = optional(string)
      offer     = optional(string)
      publisher = optional(string)
      sku       = optional(string)
      version   = optional(string)
    }))
    virtual_machine_automanage_configuration_assignments = optional(map(object({
      configuration_id = string
    })))
    virtual_machine_data_disk_attachments = optional(map(object({
      caching                   = string
      lun                       = number
      managed_disk_id           = string
      create_option             = optional(string)
      write_accelerator_enabled = optional(bool)
    })))
    virtual_machine_extensions = optional(map(object({
      name                                     = string
      publisher                                = string
      type                                     = string
      type_handler_version                     = string
      auto_upgrade_minor_version               = optional(bool)
      automatic_upgrade_enabled                = optional(bool)
      failure_suppression_enabled              = optional(bool)
      protected_settings                       = optional(string)
      protected_settings_key_vault_id          = optional(string)
      protected_settings_key_vault_secret_name = optional(string)
      provision_after_extensions               = optional(list(string))
      settings                                 = optional(string)
      tags                                     = optional(map(string))
      protected_settings_from_key_vault = optional(object({
        secret_url      = string
        source_vault_id = string
      }))
    })))
    virtual_machine_gallery_application_assignments = optional(map(object({
      gallery_application_version_id = string
      configuration_blob_uri         = optional(string)
      order                          = optional(number)
      tag                            = optional(string)
    })))
    virtual_machine_implicit_data_disk_from_sources = optional(map(object({
      create_option             = string
      disk_size_gb              = number
      lun                       = number
      name                      = string
      source_resource_id        = string
      caching                   = optional(string)
      write_accelerator_enabled = optional(bool)
    })))
    virtual_machine_packet_captures = optional(map(object({
      name                                = string
      network_watcher_id                  = string
      maximum_bytes_per_packet            = optional(number)
      maximum_bytes_per_session           = optional(number)
      maximum_capture_duration_in_seconds = optional(number)
      storage_location = object({
        file_path          = optional(string)
        storage_account_id = optional(string)
      })
      filter = optional(list(object({
        local_ip_address  = optional(string)
        local_port        = optional(string)
        protocol          = string
        remote_ip_address = optional(string)
        remote_port       = optional(string)
      })))
    })))
    virtual_machine_run_commands = optional(map(object({
      location                              = string
      name                                  = string
      error_blob_uri                        = optional(string)
      output_blob_uri                       = optional(string)
      run_as_password                       = optional(string)
      run_as_password_key_vault_id          = optional(string)
      run_as_password_key_vault_secret_name = optional(string)
      run_as_user                           = optional(string)
      tags                                  = optional(map(string))
      source = object({
        command_id = optional(string)
        script     = optional(string)
        script_uri = optional(string)
        script_uri_managed_identity = optional(object({
          client_id = optional(string)
          object_id = optional(string)
        }))
      })
      error_blob_managed_identity = optional(object({
        client_id = optional(string)
        object_id = optional(string)
      }))
      output_blob_managed_identity = optional(object({
        client_id = optional(string)
        object_id = optional(string)
      }))
      parameter = optional(list(object({
        name  = string
        value = string
      })))
      protected_parameter = optional(list(object({
        name  = string
        value = string
      })))
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.virtual_machines) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.virtual_machines : [for kk in keys(coalesce(v0.virtual_machine_automanage_configuration_assignments, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.virtual_machines : [for kk in keys(coalesce(v0.virtual_machine_data_disk_attachments, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.virtual_machines : [for kk in keys(coalesce(v0.virtual_machine_extensions, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.virtual_machines : [for kk in keys(coalesce(v0.virtual_machine_gallery_application_assignments, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.virtual_machines : [for kk in keys(coalesce(v0.virtual_machine_implicit_data_disk_from_sources, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.virtual_machines : [for kk in keys(coalesce(v0.virtual_machine_packet_captures, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.virtual_machines : [for kk in keys(coalesce(v0.virtual_machine_run_commands, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
