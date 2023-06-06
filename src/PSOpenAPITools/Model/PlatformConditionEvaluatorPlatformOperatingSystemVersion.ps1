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

.PARAMETER MatchType
No description available.
.PARAMETER Value
No description available.
.OUTPUTS

PlatformConditionEvaluatorPlatformOperatingSystemVersion<PSCustomObject>
#>

function Initialize-PlatformConditionEvaluatorPlatformOperatingSystemVersion {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${MatchType},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Value}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => PlatformConditionEvaluatorPlatformOperatingSystemVersion' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "matchType" = ${MatchType}
            "value" = ${Value}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PlatformConditionEvaluatorPlatformOperatingSystemVersion<PSCustomObject>

.DESCRIPTION

Convert from JSON to PlatformConditionEvaluatorPlatformOperatingSystemVersion<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PlatformConditionEvaluatorPlatformOperatingSystemVersion<PSCustomObject>
#>
function ConvertFrom-JsonToPlatformConditionEvaluatorPlatformOperatingSystemVersion {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => PlatformConditionEvaluatorPlatformOperatingSystemVersion' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PlatformConditionEvaluatorPlatformOperatingSystemVersion
        $AllProperties = ("matchType", "value")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "matchType"))) { #optional property not found
            $MatchType = $null
        } else {
            $MatchType = $JsonParameters.PSobject.Properties["matchType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "value"))) { #optional property not found
            $Value = $null
        } else {
            $Value = $JsonParameters.PSobject.Properties["value"].value
        }

        $PSO = [PSCustomObject]@{
            "matchType" = ${MatchType}
            "value" = ${Value}
        }

        return $PSO
    }

}

