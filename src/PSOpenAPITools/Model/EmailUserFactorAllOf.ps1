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

.PARAMETER VarProfile
No description available.
.OUTPUTS

EmailUserFactorAllOf<PSCustomObject>
#>

function Initialize-EmailUserFactorAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${VarProfile}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => EmailUserFactorAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "profile" = ${VarProfile}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to EmailUserFactorAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to EmailUserFactorAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

EmailUserFactorAllOf<PSCustomObject>
#>
function ConvertFrom-JsonToEmailUserFactorAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => EmailUserFactorAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in EmailUserFactorAllOf
        $AllProperties = ("profile")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "profile"))) { #optional property not found
            $VarProfile = $null
        } else {
            $VarProfile = $JsonParameters.PSobject.Properties["profile"].value
        }

        $PSO = [PSCustomObject]@{
            "profile" = ${VarProfile}
        }

        return $PSO
    }

}

