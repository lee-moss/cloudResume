resource azurerm_storage_account leeCloudResume {
    name                     = "leecloudresume"
    resource_group_name      = "cloudresume"
    location                 = "ukwest"
    account_replication_type = "LRS"
    account_tier             = "Standard"

 network_rules {
        default_action             = "Deny"
        ip_rules                   = ["0.0.0.0/0"]
    }
}
