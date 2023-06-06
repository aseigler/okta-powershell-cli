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

.PARAMETER Base
No description available.
.PARAMETER Custom
No description available.
.OUTPUTS

GroupSchemaDefinitions<PSCustomObject>
#>

function Initialize-GroupSchemaDefinitions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Base},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Custom}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => GroupSchemaDefinitions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "base" = ${Base}
            "custom" = ${Custom}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to GroupSchemaDefinitions<PSCustomObject>

.DESCRIPTION

Convert from JSON to GroupSchemaDefinitions<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

GroupSchemaDefinitions<PSCustomObject>
#>
function ConvertFrom-JsonToGroupSchemaDefinitions {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => GroupSchemaDefinitions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroupSchemaDefinitions
        $AllProperties = ("base", "custom")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "base"))) { #optional property not found
            $Base = $null
        } else {
            $Base = $JsonParameters.PSobject.Properties["base"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "custom"))) { #optional property not found
            $Custom = $null
        } else {
            $Custom = $JsonParameters.PSobject.Properties["custom"].value
        }

        $PSO = [PSCustomObject]@{
            "base" = ${Base}
            "custom" = ${Custom}
        }

        return $PSO
    }

}

