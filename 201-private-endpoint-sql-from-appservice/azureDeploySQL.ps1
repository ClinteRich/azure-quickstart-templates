#first we create a new Resource Group:
$RG = New-AzResourceGroup -Name "AISU-E2-RG-SQL" -Location "EastUS2"

#We then kickoff the deployment
New-AzResourceGroupDeployment -Name "Private_SQL_From_AppService" -ResourceGroupName $RG -TemplateUri "https://raw.githubusercontent.com/ClinteRich/azure-quickstart-templates/master/201-private-endpoint-sql-from-appservice/azuredeploy.json" -TemplateParameterUri "https://raw.githubusercontent.com/ClinteRich/azure-quickstart-templates/master/201-private-endpoint-sql-from-appservice/azuredeploy.parameters.json"