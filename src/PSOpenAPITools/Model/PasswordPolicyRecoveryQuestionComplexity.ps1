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

.PARAMETER MinLength
No description available.
.OUTPUTS

PasswordPolicyRecoveryQuestionComplexity<PSCustomObject>
#>

function Initialize-PasswordPolicyRecoveryQuestionComplexity {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${MinLength}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => PasswordPolicyRecoveryQuestionComplexity' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "minLength" = ${MinLength}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PasswordPolicyRecoveryQuestionComplexity<PSCustomObject>

.DESCRIPTION

Convert from JSON to PasswordPolicyRecoveryQuestionComplexity<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PasswordPolicyRecoveryQuestionComplexity<PSCustomObject>
#>
function ConvertFrom-JsonToPasswordPolicyRecoveryQuestionComplexity {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => PasswordPolicyRecoveryQuestionComplexity' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PasswordPolicyRecoveryQuestionComplexity
        $AllProperties = ("minLength")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "minLength"))) { #optional property not found
            $MinLength = $null
        } else {
            $MinLength = $JsonParameters.PSobject.Properties["minLength"].value
        }

        $PSO = [PSCustomObject]@{
            "minLength" = ${MinLength}
        }

        return $PSO
    }

}

