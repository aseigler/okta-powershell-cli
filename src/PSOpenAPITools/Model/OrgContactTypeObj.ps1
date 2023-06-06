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

.PARAMETER ContactType
No description available.
.PARAMETER Links
No description available.
.OUTPUTS

OrgContactTypeObj<PSCustomObject>
#>

function Initialize-OrgContactTypeObj {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ContactType},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Links}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => OrgContactTypeObj' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "contactType" = ${ContactType}
            "_links" = ${Links}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to OrgContactTypeObj<PSCustomObject>

.DESCRIPTION

Convert from JSON to OrgContactTypeObj<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

OrgContactTypeObj<PSCustomObject>
#>
function ConvertFrom-JsonToOrgContactTypeObj {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => OrgContactTypeObj' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OrgContactTypeObj
        $AllProperties = ("contactType", "_links")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "contactType"))) { #optional property not found
            $ContactType = $null
        } else {
            $ContactType = $JsonParameters.PSobject.Properties["contactType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "_links"))) { #optional property not found
            $Links = $null
        } else {
            $Links = $JsonParameters.PSobject.Properties["_links"].value
        }

        $PSO = [PSCustomObject]@{
            "contactType" = ${ContactType}
            "_links" = ${Links}
        }

        return $PSO
    }

}
