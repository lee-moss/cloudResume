resource azurerm_storage_account leeCloudResume {
    name                     = "leecloudresume"
    resource_group_name      = "cloudresume"
    location                 = "ukwest"
    account_replication_type = "LRS"
    account_tier             = "Standard"
    enable_https_traffic_only = true

network_rules {
        default_action             = "Deny"
        ip_rules                   = ["0.0.0.0/0"]
    }

static_website {
    index_document = "index.html"
    error_404_document = "404.html"
  }
}