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

.PARAMETER AccessPolicy
No description available.
.PARAMETER Activate
No description available.
.PARAMETER Deactivate
No description available.
.PARAMETER Groups
No description available.
.PARAMETER Logo
No description available.
.PARAMETER Metadata
No description available.
.PARAMETER Self
No description available.
.PARAMETER Users
No description available.
.OUTPUTS

ApplicationLinks<PSCustomObject>
#>

function Initialize-ApplicationLinks {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AccessPolicy},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Activate},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Deactivate},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Groups},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Logo},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Metadata},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Self},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Users}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => ApplicationLinks' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "accessPolicy" = ${AccessPolicy}
            "activate" = ${Activate}
            "deactivate" = ${Deactivate}
            "groups" = ${Groups}
            "logo" = ${Logo}
            "metadata" = ${Metadata}
            "self" = ${Self}
            "users" = ${Users}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ApplicationLinks<PSCustomObject>

.DESCRIPTION

Convert from JSON to ApplicationLinks<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ApplicationLinks<PSCustomObject>
#>
function ConvertFrom-JsonToApplicationLinks {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => ApplicationLinks' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json
        $ApplicationLinksAdditionalProperties = @{}

        # check if Json contains properties not defined in ApplicationLinks
        $AllProperties = ("accessPolicy", "activate", "deactivate", "groups", "logo", "metadata", "self", "users")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            # store undefined properties in additionalProperties
            if (!($AllProperties.Contains($name))) {
                $ApplicationLinksAdditionalProperties[$name] = $JsonParameters.PSobject.Properties[$name].value
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accessPolicy"))) { #optional property not found
            $AccessPolicy = $null
        } else {
            $AccessPolicy = $JsonParameters.PSobject.Properties["accessPolicy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "activate"))) { #optional property not found
            $Activate = $null
        } else {
            $Activate = $JsonParameters.PSobject.Properties["activate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "deactivate"))) { #optional property not found
            $Deactivate = $null
        } else {
            $Deactivate = $JsonParameters.PSobject.Properties["deactivate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "groups"))) { #optional property not found
            $Groups = $null
        } else {
            $Groups = $JsonParameters.PSobject.Properties["groups"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "logo"))) { #optional property not found
            $Logo = $null
        } else {
            $Logo = $JsonParameters.PSobject.Properties["logo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "metadata"))) { #optional property not found
            $Metadata = $null
        } else {
            $Metadata = $JsonParameters.PSobject.Properties["metadata"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "self"))) { #optional property not found
            $Self = $null
        } else {
            $Self = $JsonParameters.PSobject.Properties["self"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "users"))) { #optional property not found
            $Users = $null
        } else {
            $Users = $JsonParameters.PSobject.Properties["users"].value
        }

        $PSO = [PSCustomObject]@{
            "accessPolicy" = ${AccessPolicy}
            "activate" = ${Activate}
            "deactivate" = ${Deactivate}
            "groups" = ${Groups}
            "logo" = ${Logo}
            "metadata" = ${Metadata}
            "self" = ${Self}
            "users" = ${Users}
            "AdditionalProperties" = $ApplicationLinksAdditionalProperties
        }

        return $PSO
    }

}

