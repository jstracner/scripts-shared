# Variables
# Locaion
location=eastus2
# Resource Group Name
groupName=rg-azure-vms
# VM Name
vmName=azure-vm-01
# Image SKU
image=Win2019Datacenter
# Admin User Name
admin=azure_admin
# Admin Password
pass=firstLoginPassword
# Subnet (Will add move later)
subnet=/subscriptions/<azure-subscription/resourceGroups/<vnet>/providers/Microsoft.Network/virtualNetworks/<vnet>/subnets/<subnet>
# Set subscription.
subscription=mySubscription
# Create a resource group.
az group create -n $groupName --location $location
# Create Virtual Machine
az vm create --subscription $mySubscription -n $vmName --resource-group $groupName --location $location --image $image --admin-username $admin --admin-password $pass --subnet $subnet --public-ip-address ""
