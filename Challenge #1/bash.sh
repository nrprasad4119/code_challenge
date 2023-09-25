az group create --name myResourceGroup --location eastus

az deployment group create --name webTierDeployment --resource-group myResourceGroup --template-file web-tier.json
az deployment group create --name appTierDeployment --resource-group myResourceGroup --template-file app-tier.json
az deployment group create --name dbTierDeployment --resource-group myResourceGroup --template-file db-tier.json
