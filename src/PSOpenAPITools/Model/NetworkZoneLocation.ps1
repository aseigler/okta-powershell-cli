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

.PARAMETER Country
No description available.
.PARAMETER Region
No description available.
.OUTPUTS

NetworkZoneLocation<PSCustomObject>
#>

function Initialize-NetworkZoneLocation {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Country},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Region}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => NetworkZoneLocation' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "country" = ${Country}
            "region" = ${Region}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to NetworkZoneLocation<PSCustomObject>

.DESCRIPTION

Convert from JSON to NetworkZoneLocation<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

NetworkZoneLocation<PSCustomObject>
#>
function ConvertFrom-JsonToNetworkZoneLocation {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => NetworkZoneLocation' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in NetworkZoneLocation
        $AllProperties = ("country", "region")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "country"))) { #optional property not found
            $Country = $null
        } else {
            $Country = $JsonParameters.PSobject.Properties["country"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "region"))) { #optional property not found
            $Region = $null
        } else {
            $Region = $JsonParameters.PSobject.Properties["region"].value
        }

        $PSO = [PSCustomObject]@{
            "country" = ${Country}
            "region" = ${Region}
        }

        return $PSO
    }

}

