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

.PARAMETER Accessibility
No description available.
.PARAMETER Created
No description available.
.PARAMETER Features
No description available.
.PARAMETER Id
No description available.
.PARAMETER Label
No description available.
.PARAMETER LastUpdated
No description available.
.PARAMETER Licensing
No description available.
.PARAMETER VarProfile
No description available.
.PARAMETER SignOnMode
No description available.
.PARAMETER Status
No description available.
.PARAMETER Visibility
No description available.
.PARAMETER Embedded
No description available.
.PARAMETER Links
No description available.
.PARAMETER Credentials
No description available.
.PARAMETER Name
No description available.
.PARAMETER Settings
No description available.
.OUTPUTS

AutoLoginApplication<PSCustomObject>
#>

function Initialize-AutoLoginApplication {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Accessibility},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Features},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Label},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${LastUpdated},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Licensing},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${VarProfile},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${SignOnMode},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Status},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Visibility},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Embedded},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Links},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Credentials},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Settings}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => AutoLoginApplication' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "accessibility" = ${Accessibility}
            "created" = ${Created}
            "features" = ${Features}
            "id" = ${Id}
            "label" = ${Label}
            "lastUpdated" = ${LastUpdated}
            "licensing" = ${Licensing}
            "profile" = ${VarProfile}
            "signOnMode" = ${SignOnMode}
            "status" = ${Status}
            "visibility" = ${Visibility}
            "_embedded" = ${Embedded}
            "_links" = ${Links}
            "credentials" = ${Credentials}
            "name" = ${Name}
            "settings" = ${Settings}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AutoLoginApplication<PSCustomObject>

.DESCRIPTION

Convert from JSON to AutoLoginApplication<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AutoLoginApplication<PSCustomObject>
#>
function ConvertFrom-JsonToAutoLoginApplication {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => AutoLoginApplication' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in AutoLoginApplication
        $AllProperties = ("accessibility", "created", "features", "id", "label", "lastUpdated", "licensing", "profile", "signOnMode", "status", "visibility", "_embedded", "_links", "credentials", "name", "settings")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accessibility"))) { #optional property not found
            $Accessibility = $null
        } else {
            $Accessibility = $JsonParameters.PSobject.Properties["accessibility"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "features"))) { #optional property not found
            $Features = $null
        } else {
            $Features = $JsonParameters.PSobject.Properties["features"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "label"))) { #optional property not found
            $Label = $null
        } else {
            $Label = $JsonParameters.PSobject.Properties["label"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastUpdated"))) { #optional property not found
            $LastUpdated = $null
        } else {
            $LastUpdated = $JsonParameters.PSobject.Properties["lastUpdated"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "licensing"))) { #optional property not found
            $Licensing = $null
        } else {
            $Licensing = $JsonParameters.PSobject.Properties["licensing"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "profile"))) { #optional property not found
            $VarProfile = $null
        } else {
            $VarProfile = $JsonParameters.PSobject.Properties["profile"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "signOnMode"))) { #optional property not found
            $SignOnMode = $null
        } else {
            $SignOnMode = $JsonParameters.PSobject.Properties["signOnMode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "visibility"))) { #optional property not found
            $Visibility = $null
        } else {
            $Visibility = $JsonParameters.PSobject.Properties["visibility"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "_embedded"))) { #optional property not found
            $Embedded = $null
        } else {
            $Embedded = $JsonParameters.PSobject.Properties["_embedded"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "_links"))) { #optional property not found
            $Links = $null
        } else {
            $Links = $JsonParameters.PSobject.Properties["_links"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "credentials"))) { #optional property not found
            $Credentials = $null
        } else {
            $Credentials = $JsonParameters.PSobject.Properties["credentials"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "settings"))) { #optional property not found
            $Settings = $null
        } else {
            $Settings = $JsonParameters.PSobject.Properties["settings"].value
        }

        $PSO = [PSCustomObject]@{
            "accessibility" = ${Accessibility}
            "created" = ${Created}
            "features" = ${Features}
            "id" = ${Id}
            "label" = ${Label}
            "lastUpdated" = ${LastUpdated}
            "licensing" = ${Licensing}
            "profile" = ${VarProfile}
            "signOnMode" = ${SignOnMode}
            "status" = ${Status}
            "visibility" = ${Visibility}
            "_embedded" = ${Embedded}
            "_links" = ${Links}
            "credentials" = ${Credentials}
            "name" = ${Name}
            "settings" = ${Settings}
        }

        return $PSO
    }

}

