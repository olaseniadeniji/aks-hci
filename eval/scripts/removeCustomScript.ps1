[CmdletBinding()]
param
(
    [Parameter(Mandatory = $true)]
    [string] $resourceGroupName,
    [Parameter(Mandatory = $true)]
    [string] $vmName,
    [Parameter(Mandatory = $true)]
    [string] $subscriptionId,
    [Parameter(Mandatory = $true)]
    [string] $tenantId,
    [Parameter(Mandatory = $true)]
    [string] $appId,
    [Parameter(Mandatory = $true)]
    [SecureString] $appSecret
)

$ErrorActionPreference = 'Stop'
$spCreds = New-Object System.Management.Automation.PSCredential ($appId, $appSecret)
Connect-AzAccount -Credential $spCreds -ServicePrincipal -Tenant $tenantId -Subscription $subscriptionId
Remove-AzVMCustomScriptExtension -Name 'InstallWindowsAdminCenter' -ResourceGroupName $resourceGroupName -VMName $vmName