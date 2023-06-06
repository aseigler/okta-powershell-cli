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

.PARAMETER Properties
No description available.
.PARAMETER Status
No description available.
.OUTPUTS

PasswordPolicyRecoveryEmail<PSCustomObject>
#>

function Initialize-PasswordPolicyRecoveryEmail {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Properties},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Status}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => PasswordPolicyRecoveryEmail' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "properties" = ${Properties}
            "status" = ${Status}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PasswordPolicyRecoveryEmail<PSCustomObject>

.DESCRIPTION

Convert from JSON to PasswordPolicyRecoveryEmail<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PasswordPolicyRecoveryEmail<PSCustomObject>
#>
function ConvertFrom-JsonToPasswordPolicyRecoveryEmail {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => PasswordPolicyRecoveryEmail' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PasswordPolicyRecoveryEmail
        $AllProperties = ("properties", "status")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "properties"))) { #optional property not found
            $Properties = $null
        } else {
            $Properties = $JsonParameters.PSobject.Properties["properties"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        $PSO = [PSCustomObject]@{
            "properties" = ${Properties}
            "status" = ${Status}
        }

        return $PSO
    }

}
