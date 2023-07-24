#
# Okta Management
# Allows customers to easily access the Okta Management APIs
# Version: 3.0.0
# Contact: devex-public@okta.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Permissions
No description available.
.OUTPUTS

IamRoleLinksAllOf<PSCustomObject>
#>

function Initialize-OktaIamRoleLinksAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Permissions}
    )

    Process {
        'Creating PSCustomObject: Okta.PowerShell => OktaIamRoleLinksAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "permissions" = ${Permissions}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IamRoleLinksAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to IamRoleLinksAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IamRoleLinksAllOf<PSCustomObject>
#>
function ConvertFrom-OktaJsonToIamRoleLinksAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Okta.PowerShell => OktaIamRoleLinksAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OktaIamRoleLinksAllOf
        $AllProperties = ("permissions")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "permissions"))) { #optional property not found
            $Permissions = $null
        } else {
            $Permissions = $JsonParameters.PSobject.Properties["permissions"].value
        }

        $PSO = [PSCustomObject]@{
            "permissions" = ${Permissions}
        }

        return $PSO
    }

}
