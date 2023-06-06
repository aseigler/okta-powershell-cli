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
No description available.
.PARAMETER FactorType
No description available.
.PARAMETER Id
No description available.
.PARAMETER LastUpdated
No description available.
.PARAMETER Provider
No description available.
.PARAMETER Status
No description available.
.PARAMETER Verify
No description available.
.PARAMETER Embedded
No description available.
.PARAMETER Links
No description available.
.PARAMETER VarProfile
No description available.
.OUTPUTS

EmailUserFactor<PSCustomObject>
#>

function Initialize-EmailUserFactor {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${FactorType},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${LastUpdated},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Provider},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Status},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Verify},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Embedded},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Links},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${VarProfile}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => EmailUserFactor' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "created" = ${Created}
            "factorType" = ${FactorType}
            "id" = ${Id}
            "lastUpdated" = ${LastUpdated}
            "provider" = ${Provider}
            "status" = ${Status}
            "verify" = ${Verify}
            "_embedded" = ${Embedded}
            "_links" = ${Links}
            "profile" = ${VarProfile}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to EmailUserFactor<PSCustomObject>

.DESCRIPTION

Convert from JSON to EmailUserFactor<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

EmailUserFactor<PSCustomObject>
#>
function ConvertFrom-JsonToEmailUserFactor {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => EmailUserFactor' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in EmailUserFactor
        $AllProperties = ("created", "factorType", "id", "lastUpdated", "provider", "status", "verify", "_embedded", "_links", "profile")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "factorType"))) { #optional property not found
            $FactorType = $null
        } else {
            $FactorType = $JsonParameters.PSobject.Properties["factorType"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "provider"))) { #optional property not found
            $Provider = $null
        } else {
            $Provider = $JsonParameters.PSobject.Properties["provider"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "verify"))) { #optional property not found
            $Verify = $null
        } else {
            $Verify = $JsonParameters.PSobject.Properties["verify"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "profile"))) { #optional property not found
            $VarProfile = $null
        } else {
            $VarProfile = $JsonParameters.PSobject.Properties["profile"].value
        }

        $PSO = [PSCustomObject]@{
            "created" = ${Created}
            "factorType" = ${FactorType}
            "id" = ${Id}
            "lastUpdated" = ${LastUpdated}
            "provider" = ${Provider}
            "status" = ${Status}
            "verify" = ${Verify}
            "_embedded" = ${Embedded}
            "_links" = ${Links}
            "profile" = ${VarProfile}
        }

        return $PSO
    }

}

