// TFVARS
name                = "pitu-linux-webapp-demo"
resource_group_name = "rg-pitu-webapp-dev"
location            = "Central India"

# Replace this with your actual Azure App Service Plan ID
service_plan_id = "/subscriptions/YOUR_SUBSCRIPTION_ID/resourceGroups/rg-pitu-webapp-dev/providers/Microsoft.Web/serverfarms/YOUR_APP_SERVICE_PLAN"

site_config = {
  always_on         = true
  minimum_tls_version = "1.2"
  application_stack = {
    docker_image_name = "nginx:latest"
  }
}

https_only = true

tags = {
  environment = "dev"
  project     = "azure-terraform-webapp"
}