# Time logs

Log [31/08/23]

Daily report

Made a good start by completing yesterdsays script and deploying it to Azure.
Just a minor typo error, but all went well and got deployed successfully. A resource group and storage account got created in Azure. 



Obstacles:

I have Bash setup as my default terminal and I was able to create and deploy a resource group in Azure by using the following command: 

*az group create --resource-group cloud11redrose -l westeurope*

But I could not deploy the resource to create a storageaccount using the following command: 

*az deployment group create -g cloud11redrose -f main.bicep*

However, using the same commands in Powershell terminal, it worked.

Solutions:

I tried a different terminal to create and deploy an Azure resource group and within that create an storageaccount. It worked.


