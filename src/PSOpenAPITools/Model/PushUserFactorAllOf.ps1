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

.PARAMETER ExpiresAt
No description available.
.PARAMETER FactorResult
No description available.
.PARAMETER VarProfile
No description available.
.OUTPUTS

PushUserFactorAllOf<PSCustomObject>
#>

function Initialize-PushUserFactorAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${ExpiresAt},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${FactorResult},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${VarProfile}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => PushUserFactorAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "expiresAt" = ${ExpiresAt}
            "factorResult" = ${FactorResult}
            "profile" = ${VarProfile}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PushUserFactorAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to PushUserFactorAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PushUserFactorAllOf<PSCustomObject>
#>
function ConvertFrom-JsonToPushUserFactorAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => PushUserFactorAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PushUserFactorAllOf
        $AllProperties = ("expiresAt", "factorResult", "profile")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "expiresAt"))) { #optional property not found
            $ExpiresAt = $null
        } else {
            $ExpiresAt = $JsonParameters.PSobject.Properties["expiresAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "factorResult"))) { #optional property not found
            $FactorResult = $null
        } else {
            $FactorResult = $JsonParameters.PSobject.Properties["factorResult"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "profile"))) { #optional property not found
            $VarProfile = $null
        } else {
            $VarProfile = $JsonParameters.PSobject.Properties["profile"].value
        }

        $PSO = [PSCustomObject]@{
            "expiresAt" = ${ExpiresAt}
            "factorResult" = ${FactorResult}
            "profile" = ${VarProfile}
        }

        return $PSO
    }

}

