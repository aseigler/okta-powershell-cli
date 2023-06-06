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

.PARAMETER SignOn
No description available.
.OUTPUTS

AutoLoginApplicationSettingsAllOf<PSCustomObject>
#>

function Initialize-AutoLoginApplicationSettingsAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${SignOn}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => AutoLoginApplicationSettingsAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "signOn" = ${SignOn}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AutoLoginApplicationSettingsAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to AutoLoginApplicationSettingsAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AutoLoginApplicationSettingsAllOf<PSCustomObject>
#>
function ConvertFrom-JsonToAutoLoginApplicationSettingsAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => AutoLoginApplicationSettingsAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in AutoLoginApplicationSettingsAllOf
        $AllProperties = ("signOn")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "signOn"))) { #optional property not found
            $SignOn = $null
        } else {
            $SignOn = $JsonParameters.PSobject.Properties["signOn"].value
        }

        $PSO = [PSCustomObject]@{
            "signOn" = ${SignOn}
        }

        return $PSO
    }

}

