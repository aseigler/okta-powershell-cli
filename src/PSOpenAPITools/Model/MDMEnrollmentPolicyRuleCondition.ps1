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

.PARAMETER BlockNonSafeAndroid
No description available.
.PARAMETER Enrollment
No description available.
.OUTPUTS

MDMEnrollmentPolicyRuleCondition<PSCustomObject>
#>

function Initialize-MDMEnrollmentPolicyRuleCondition {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${BlockNonSafeAndroid},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Enrollment}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => MDMEnrollmentPolicyRuleCondition' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "blockNonSafeAndroid" = ${BlockNonSafeAndroid}
            "enrollment" = ${Enrollment}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to MDMEnrollmentPolicyRuleCondition<PSCustomObject>

.DESCRIPTION

Convert from JSON to MDMEnrollmentPolicyRuleCondition<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

MDMEnrollmentPolicyRuleCondition<PSCustomObject>
#>
function ConvertFrom-JsonToMDMEnrollmentPolicyRuleCondition {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => MDMEnrollmentPolicyRuleCondition' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in MDMEnrollmentPolicyRuleCondition
        $AllProperties = ("blockNonSafeAndroid", "enrollment")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "blockNonSafeAndroid"))) { #optional property not found
            $BlockNonSafeAndroid = $null
        } else {
            $BlockNonSafeAndroid = $JsonParameters.PSobject.Properties["blockNonSafeAndroid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "enrollment"))) { #optional property not found
            $Enrollment = $null
        } else {
            $Enrollment = $JsonParameters.PSobject.Properties["enrollment"].value
        }

        $PSO = [PSCustomObject]@{
            "blockNonSafeAndroid" = ${BlockNonSafeAndroid}
            "enrollment" = ${Enrollment}
        }

        return $PSO
    }

}

