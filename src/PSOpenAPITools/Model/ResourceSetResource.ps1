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

.PARAMETER Created
Timestamp when the role was created
.PARAMETER Description
Description of the resource set
.PARAMETER Id
Unique key for the role
.PARAMETER LastUpdated
Timestamp when the role was last updated
.PARAMETER Links
No description available.
.OUTPUTS

ResourceSetResource<PSCustomObject>
#>

function Initialize-ResourceSetResource {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${LastUpdated},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Links}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => ResourceSetResource' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "created" = ${Created}
            "description" = ${Description}
            "id" = ${Id}
            "lastUpdated" = ${LastUpdated}
            "_links" = ${Links}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ResourceSetResource<PSCustomObject>

.DESCRIPTION

Convert from JSON to ResourceSetResource<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ResourceSetResource<PSCustomObject>
#>
function ConvertFrom-JsonToResourceSetResource {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => ResourceSetResource' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ResourceSetResource
        $AllProperties = ("created", "description", "id", "lastUpdated", "_links")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastUpdated"))) { #optional property not found
            $LastUpdated = $null
        } else {
            $LastUpdated = $JsonParameters.PSobject.Properties["lastUpdated"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "_links"))) { #optional property not found
            $Links = $null
        } else {
            $Links = $JsonParameters.PSobject.Properties["_links"].value
        }

        $PSO = [PSCustomObject]@{
            "created" = ${Created}
            "description" = ${Description}
            "id" = ${Id}
            "lastUpdated" = ${LastUpdated}
            "_links" = ${Links}
        }

        return $PSO
    }

}

