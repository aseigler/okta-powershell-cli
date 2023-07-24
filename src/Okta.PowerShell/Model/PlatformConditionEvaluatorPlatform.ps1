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

.PARAMETER Os
No description available.
.PARAMETER Type
No description available.
.OUTPUTS

PlatformConditionEvaluatorPlatform<PSCustomObject>
#>

function Initialize-OktaPlatformConditionEvaluatorPlatform {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Os},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ANY", "DESKTOP", "MOBILE", "OTHER")]
        [PSCustomObject]
        ${Type}
    )

    Process {
        'Creating PSCustomObject: Okta.PowerShell => OktaPlatformConditionEvaluatorPlatform' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "os" = ${Os}
            "type" = ${Type}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PlatformConditionEvaluatorPlatform<PSCustomObject>

.DESCRIPTION

Convert from JSON to PlatformConditionEvaluatorPlatform<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PlatformConditionEvaluatorPlatform<PSCustomObject>
#>
function ConvertFrom-OktaJsonToPlatformConditionEvaluatorPlatform {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Okta.PowerShell => OktaPlatformConditionEvaluatorPlatform' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OktaPlatformConditionEvaluatorPlatform
        $AllProperties = ("os", "type")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "os"))) { #optional property not found
            $Os = $null
        } else {
            $Os = $JsonParameters.PSobject.Properties["os"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        $PSO = [PSCustomObject]@{
            "os" = ${Os}
            "type" = ${Type}
        }

        return $PSO
    }

}
