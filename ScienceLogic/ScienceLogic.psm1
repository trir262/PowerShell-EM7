##############################################################################
# SUMMARY
# PowerShell commands for working with the ScienceLogic EM7 API.
#
# AUTHOR
# Josh Einstein
##############################################################################

$Globals = @{
    ApiRoot         = $Null
    Credentials     = $Null
    FormatResponse  = $false
    HideFilterInfo  = 0
    DefaultLimit    = 100
	DefaultPageSize = 500
    CredentialPath  = "${ENV:TEMP}\slcred.xml"
    IgnoreSSLErrors = $false
}

if (Test-Path $Globals.CredentialPath) {
    $Globals.Credentials = Import-Clixml $Globals.CredentialPath -ErrorAction 0
    $Globals.ApiRoot = $Globals.Credentials.URI
	$Globals.FormatResponse = $Globals.Credentials.FormatResponse
}

. $PSScriptRoot\Scripts\Internal.ps1
. $PSScriptRoot\Scripts\Core.ps1
. $PSScriptRoot\Scripts\Organizations.ps1
. $PSScriptRoot\Scripts\Devices.ps1
. $PSScriptRoot\Scripts\DeviceGroups.ps1
