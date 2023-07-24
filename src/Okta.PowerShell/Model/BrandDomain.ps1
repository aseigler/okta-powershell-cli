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

.PARAMETER DomainId
No description available.
.PARAMETER Links
No description available.
.OUTPUTS

BrandDomain<PSCustomObject>
#>

function Initialize-OktaBrandDomain {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DomainId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Links}
    )

    Process {
        'Creating PSCustomObject: Okta.PowerShell => OktaBrandDomain' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "domainId" = ${DomainId}
            "_links" = ${Links}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to BrandDomain<PSCustomObject>

.DESCRIPTION

Convert from JSON to BrandDomain<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

BrandDomain<PSCustomObject>
#>
function ConvertFrom-OktaJsonToBrandDomain {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Okta.PowerShell => OktaBrandDomain' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OktaBrandDomain
        $AllProperties = ("domainId", "_links")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "domainId"))) { #optional property not found
            $DomainId = $null
        } else {
            $DomainId = $JsonParameters.PSobject.Properties["domainId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "_links"))) { #optional property not found
            $Links = $null
        } else {
            $Links = $JsonParameters.PSobject.Properties["_links"].value
        }

        $PSO = [PSCustomObject]@{
            "domainId" = ${DomainId}
            "_links" = ${Links}
        }

        return $PSO
    }

}
