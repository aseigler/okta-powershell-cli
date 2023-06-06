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
Timestamp when the Log Stream was created
.PARAMETER Id
Unique key for the Log Stream
.PARAMETER LastUpdated
Timestamp when the Log Stream was last updated
.PARAMETER Name
Unique name for the Log Stream
.PARAMETER Status
No description available.
.PARAMETER Type
No description available.
.PARAMETER Links
No description available.
.PARAMETER Settings
No description available.
.OUTPUTS

LogStreamAws<PSCustomObject>
#>

function Initialize-LogStreamAws {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${LastUpdated},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Status},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Type},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Links},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Settings}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => LogStreamAws' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "created" = ${Created}
            "id" = ${Id}
            "lastUpdated" = ${LastUpdated}
            "name" = ${Name}
            "status" = ${Status}
            "type" = ${Type}
            "_links" = ${Links}
            "settings" = ${Settings}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to LogStreamAws<PSCustomObject>

.DESCRIPTION

Convert from JSON to LogStreamAws<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

LogStreamAws<PSCustomObject>
#>
function ConvertFrom-JsonToLogStreamAws {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => LogStreamAws' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LogStreamAws
        $AllProperties = ("created", "id", "lastUpdated", "name", "status", "type", "_links", "settings")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "_links"))) { #optional property not found
            $Links = $null
        } else {
            $Links = $JsonParameters.PSobject.Properties["_links"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "settings"))) { #optional property not found
            $Settings = $null
        } else {
            $Settings = $JsonParameters.PSobject.Properties["settings"].value
        }

        $PSO = [PSCustomObject]@{
            "created" = ${Created}
            "id" = ${Id}
            "lastUpdated" = ${LastUpdated}
            "name" = ${Name}
            "status" = ${Status}
            "type" = ${Type}
            "_links" = ${Links}
            "settings" = ${Settings}
        }

        return $PSO
    }

}

