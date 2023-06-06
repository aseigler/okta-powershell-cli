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

.PARAMETER Action
No description available.
.PARAMETER Conditions
No description available.
.PARAMETER Groups
No description available.
.PARAMETER ProfileMaster
No description available.
.OUTPUTS

Provisioning<PSCustomObject>
#>

function Initialize-Provisioning {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Action},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Conditions},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Groups},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ProfileMaster}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => Provisioning' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "action" = ${Action}
            "conditions" = ${Conditions}
            "groups" = ${Groups}
            "profileMaster" = ${ProfileMaster}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Provisioning<PSCustomObject>

.DESCRIPTION

Convert from JSON to Provisioning<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Provisioning<PSCustomObject>
#>
function ConvertFrom-JsonToProvisioning {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => Provisioning' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in Provisioning
        $AllProperties = ("action", "conditions", "groups", "profileMaster")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "action"))) { #optional property not found
            $Action = $null
        } else {
            $Action = $JsonParameters.PSobject.Properties["action"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "conditions"))) { #optional property not found
            $Conditions = $null
        } else {
            $Conditions = $JsonParameters.PSobject.Properties["conditions"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "groups"))) { #optional property not found
            $Groups = $null
        } else {
            $Groups = $JsonParameters.PSobject.Properties["groups"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "profileMaster"))) { #optional property not found
            $ProfileMaster = $null
        } else {
            $ProfileMaster = $JsonParameters.PSobject.Properties["profileMaster"].value
        }

        $PSO = [PSCustomObject]@{
            "action" = ${Action}
            "conditions" = ${Conditions}
            "groups" = ${Groups}
            "profileMaster" = ${ProfileMaster}
        }

        return $PSO
    }

}

