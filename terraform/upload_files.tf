 resource "azurerm_storage_blob" "index_html" {
  name                   = "index.html"
  storage_account_name   = azurerm_storage_account.leeCloudResume.name
  storage_container_name = "$web"
  type                   = "Block"
  source                 = "/Users/leemoss/Cloud Resume/index.html"
  content_type           = "text/html"
}

resource "azurerm_storage_blob" "styles_css" {
  name                   = "styles.css"
  storage_account_name   = azurerm_storage_account.leeCloudResume.name
  storage_container_name = "$web"
  type                   = "Block"
  source                 = "/Users/leemoss/Cloud Resume/styles.css"
  content_type           = "text/css"
}

resource "azurerm_storage_blob" "error_404_html" {
  name                   = "404.html"
  storage_account_name   = azurerm_storage_account.leeCloudResume.name
  storage_container_name = "$web"
  type                   = "Block"
  source                 = "/Users/leemoss/Cloud Resume/404.html"
  content_type           = "text/html"
}
