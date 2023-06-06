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

.PARAMETER BrandId
No description available.
.OUTPUTS

UpdateDomain<PSCustomObject>
#>

function Initialize-UpdateDomain {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${BrandId}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => UpdateDomain' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "brandId" = ${BrandId}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to UpdateDomain<PSCustomObject>

.DESCRIPTION

Convert from JSON to UpdateDomain<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

UpdateDomain<PSCustomObject>
#>
function ConvertFrom-JsonToUpdateDomain {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => UpdateDomain' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in UpdateDomain
        $AllProperties = ("brandId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "brandId"))) { #optional property not found
            $BrandId = $null
        } else {
            $BrandId = $JsonParameters.PSobject.Properties["brandId"].value
        }

        $PSO = [PSCustomObject]@{
            "brandId" = ${BrandId}
        }

        return $PSO
    }

}

