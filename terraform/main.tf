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
resource "azurerm_cdn_endpoint" "cdn_endpoint" {
  name                = "endpoint"
  profile_name        = azurerm_cdn_profile.cdn_cloud.name
  location            = "global"
  resource_group_name = data.azurerm_resource_group.cloudResume.name
  is_http_allowed     = false
  is_https_allowed    = true

origin {
    name              = "example"
    host_name         = azurerm_storage_account.leeCloudResume.primary_blob_host
  }
}