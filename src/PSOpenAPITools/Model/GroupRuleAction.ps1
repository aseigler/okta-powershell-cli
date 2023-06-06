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

.PARAMETER AssignUserToGroups
No description available.
.OUTPUTS

GroupRuleAction<PSCustomObject>
#>

function Initialize-GroupRuleAction {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AssignUserToGroups}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => GroupRuleAction' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "assignUserToGroups" = ${AssignUserToGroups}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to GroupRuleAction<PSCustomObject>

.DESCRIPTION

Convert from JSON to GroupRuleAction<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

GroupRuleAction<PSCustomObject>
#>
function ConvertFrom-JsonToGroupRuleAction {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => GroupRuleAction' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroupRuleAction
        $AllProperties = ("assignUserToGroups")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "assignUserToGroups"))) { #optional property not found
            $AssignUserToGroups = $null
        } else {
            $AssignUserToGroups = $JsonParameters.PSobject.Properties["assignUserToGroups"].value
        }

        $PSO = [PSCustomObject]@{
            "assignUserToGroups" = ${AssignUserToGroups}
        }

        return $PSO
    }

}

