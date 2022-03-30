data "azurerm_resource_group" "DigiTestexample" {
  name = "rg-np-digital-url-shortener-int"
  #location = "East US 2"
}

data "azurerm_function_app" "Urlexample1" {
  name = "fa-np-ea2-digital-url-shortener-int"
  #location = data.azurerm_resource_group.DigiTestexample.location
  resource_group_name = data.azurerm_resource_group.DigiTestexample.name
  
}

data "azurerm_monitor_action_group" "DigiTestexample" {
  name                = "sre-np-azmigrate"
  resource_group_name = "rg-np-digital-monitoring"
  #short_name          = "SRETeam"
  
}

resource "azurerm_monitor_metric_alert" "example2" {
  name                = "Average Memory WorkingSet bytes are greater than 90"
  resource_group_name = data.azurerm_resource_group.DigiTestexample.name
  scopes              = [data.azurerm_function_app.Urlexample1.id]
  description         = "Action will be triggered when functionApp Average Memory WorkingSet bytes are greater than 1"

  criteria {
    metric_namespace = "Microsoft.Web/sites"
    metric_name      = "AverageMemoryWorkingSet"
    //severity         = "critical"
    aggregation      = "Total"
    operator         = "GreaterThan"
    threshold        = 1
    
    #unit            = "Seconds"

  }
action {
    action_group_id = "/subscriptions/PutInTheSubsIDWithURLLifeAfterSlash/resourceGroups/rg-np-digital-monitoring/providers/Microsoft.Insights/actionGroups/sre-np-azmigrate"
  }
}