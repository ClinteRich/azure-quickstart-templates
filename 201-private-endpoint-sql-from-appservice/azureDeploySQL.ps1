#first we create a new Resource Group:
$RG = New-AzResourceGroup -Name "AISU-E2-RG-SQL" -Location "EastUS2"

#We then kickoff the deployment
New-AzResourceGroupDeployment -Name "Private_SQL_From_AppService" -ResourceGroupName $RG -TemplateUri "" -TemplateParameterUri ""