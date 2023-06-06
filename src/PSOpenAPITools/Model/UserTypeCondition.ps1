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

.PARAMETER Exclude
No description available.
.PARAMETER Include
No description available.
.OUTPUTS

UserTypeCondition<PSCustomObject>
#>

function Initialize-UserTypeCondition {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Exclude},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Include}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => UserTypeCondition' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "exclude" = ${Exclude}
            "include" = ${Include}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to UserTypeCondition<PSCustomObject>

.DESCRIPTION

Convert from JSON to UserTypeCondition<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

UserTypeCondition<PSCustomObject>
#>
function ConvertFrom-JsonToUserTypeCondition {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => UserTypeCondition' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in UserTypeCondition
        $AllProperties = ("exclude", "include")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "exclude"))) { #optional property not found
            $Exclude = $null
        } else {
            $Exclude = $JsonParameters.PSobject.Properties["exclude"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "include"))) { #optional property not found
            $Include = $null
        } else {
            $Include = $JsonParameters.PSobject.Properties["include"].value
        }

        $PSO = [PSCustomObject]@{
            "exclude" = ${Exclude}
            "include" = ${Include}
        }

        return $PSO
    }

}
