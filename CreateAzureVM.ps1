# Variables
$resourceGroup = "MyResourceGroup"
$location = "EastUS"
$vmName = "MyAutoVM"

# Create Resource Group
New-AzResourceGroup -Name $resourceGroup -Location $location

# Create VM config
New-AzVM `
  -ResourceGroupName $resourceGroup `
  -Name $vmName `
  -Location $location `
  -VirtualNetworkName "$vmName-vnet" `
  -SubnetName "$vmName-subnet" `
  -SecurityGroupName "$vmName-nsg" `
  -PublicIpAddressName "$vmName-ip" `
  -OpenPorts 22 `
  -Image "Ubuntu2204" `
  -Size "Standard_B2s" `
  -Credential (Get-Credential)

