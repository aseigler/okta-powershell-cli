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

.PARAMETER Include
No description available.
.OUTPUTS

OAuth2ScopesMediationPolicyRuleCondition<PSCustomObject>
#>

function Initialize-OAuth2ScopesMediationPolicyRuleCondition {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Include}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => OAuth2ScopesMediationPolicyRuleCondition' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "include" = ${Include}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to OAuth2ScopesMediationPolicyRuleCondition<PSCustomObject>

.DESCRIPTION

Convert from JSON to OAuth2ScopesMediationPolicyRuleCondition<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

OAuth2ScopesMediationPolicyRuleCondition<PSCustomObject>
#>
function ConvertFrom-JsonToOAuth2ScopesMediationPolicyRuleCondition {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => OAuth2ScopesMediationPolicyRuleCondition' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OAuth2ScopesMediationPolicyRuleCondition
        $AllProperties = ("include")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "include"))) { #optional property not found
            $Include = $null
        } else {
            $Include = $JsonParameters.PSobject.Properties["include"].value
        }

        $PSO = [PSCustomObject]@{
            "include" = ${Include}
        }

        return $PSO
    }

}

