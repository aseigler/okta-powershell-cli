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

.PARAMETER Template
No description available.
.OUTPUTS

AuthenticatorProviderConfigurationUserNameTemplate<PSCustomObject>
#>

function Initialize-AuthenticatorProviderConfigurationUserNameTemplate {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Template}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => AuthenticatorProviderConfigurationUserNameTemplate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "template" = ${Template}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AuthenticatorProviderConfigurationUserNameTemplate<PSCustomObject>

.DESCRIPTION

Convert from JSON to AuthenticatorProviderConfigurationUserNameTemplate<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AuthenticatorProviderConfigurationUserNameTemplate<PSCustomObject>
#>
function ConvertFrom-JsonToAuthenticatorProviderConfigurationUserNameTemplate {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => AuthenticatorProviderConfigurationUserNameTemplate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in AuthenticatorProviderConfigurationUserNameTemplate
        $AllProperties = ("template")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "template"))) { #optional property not found
            $Template = $null
        } else {
            $Template = $JsonParameters.PSobject.Properties["template"].value
        }

        $PSO = [PSCustomObject]@{
            "template" = ${Template}
        }

        return $PSO
    }

}

