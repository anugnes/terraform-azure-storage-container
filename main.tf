resource "azurerm_storage_account" "my_storage_acc" {
  account_tier             = "Standard"
  account_replication_type = "LRS"
  location                 = "${var.location}"
  name                     = "${var.storage_acc_name}"
  resource_group_name      = "${var.res_group_name}"
}

resource "azurerm_storage_container" "my_storage_con" {
  name                 = "${var.storage_con_name}"
  resource_group_name  = "${var.res_group_name}"
  storage_account_name = "${azurerm_storage_account.my_storage_acc.name}"
}
