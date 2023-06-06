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

.PARAMETER Signon
No description available.
.OUTPUTS

OktaSignOnPolicyRuleActionsAllOf<PSCustomObject>
#>

function Initialize-OktaSignOnPolicyRuleActionsAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Signon}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => OktaSignOnPolicyRuleActionsAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "signon" = ${Signon}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to OktaSignOnPolicyRuleActionsAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to OktaSignOnPolicyRuleActionsAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

OktaSignOnPolicyRuleActionsAllOf<PSCustomObject>
#>
function ConvertFrom-JsonToOktaSignOnPolicyRuleActionsAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => OktaSignOnPolicyRuleActionsAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OktaSignOnPolicyRuleActionsAllOf
        $AllProperties = ("signon")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "signon"))) { #optional property not found
            $Signon = $null
        } else {
            $Signon = $JsonParameters.PSobject.Properties["signon"].value
        }

        $PSO = [PSCustomObject]@{
            "signon" = ${Signon}
        }

        return $PSO
    }

}

