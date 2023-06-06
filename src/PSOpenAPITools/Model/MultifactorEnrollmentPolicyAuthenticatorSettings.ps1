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

.PARAMETER Enroll
No description available.
.PARAMETER Key
No description available.
.OUTPUTS

MultifactorEnrollmentPolicyAuthenticatorSettings<PSCustomObject>
#>

function Initialize-MultifactorEnrollmentPolicyAuthenticatorSettings {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Enroll},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Key}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => MultifactorEnrollmentPolicyAuthenticatorSettings' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "enroll" = ${Enroll}
            "key" = ${Key}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to MultifactorEnrollmentPolicyAuthenticatorSettings<PSCustomObject>

.DESCRIPTION

Convert from JSON to MultifactorEnrollmentPolicyAuthenticatorSettings<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

MultifactorEnrollmentPolicyAuthenticatorSettings<PSCustomObject>
#>
function ConvertFrom-JsonToMultifactorEnrollmentPolicyAuthenticatorSettings {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => MultifactorEnrollmentPolicyAuthenticatorSettings' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in MultifactorEnrollmentPolicyAuthenticatorSettings
        $AllProperties = ("enroll", "key")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "enroll"))) { #optional property not found
            $Enroll = $null
        } else {
            $Enroll = $JsonParameters.PSobject.Properties["enroll"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "key"))) { #optional property not found
            $Key = $null
        } else {
            $Key = $JsonParameters.PSobject.Properties["key"].value
        }

        $PSO = [PSCustomObject]@{
            "enroll" = ${Enroll}
            "key" = ${Key}
        }

        return $PSO
    }

}
