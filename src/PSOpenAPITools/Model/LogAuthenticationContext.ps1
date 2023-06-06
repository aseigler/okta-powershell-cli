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

.PARAMETER AuthenticationProvider
No description available.
.PARAMETER AuthenticationStep
No description available.
.PARAMETER CredentialProvider
No description available.
.PARAMETER CredentialType
No description available.
.PARAMETER ExternalSessionId
No description available.
.PARAMETER Interface
No description available.
.PARAMETER Issuer
No description available.
.OUTPUTS

LogAuthenticationContext<PSCustomObject>
#>

function Initialize-LogAuthenticationContext {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AuthenticationProvider},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${AuthenticationStep},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${CredentialProvider},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${CredentialType},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ExternalSessionId},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Interface},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Issuer}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => LogAuthenticationContext' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "authenticationProvider" = ${AuthenticationProvider}
            "authenticationStep" = ${AuthenticationStep}
            "credentialProvider" = ${CredentialProvider}
            "credentialType" = ${CredentialType}
            "externalSessionId" = ${ExternalSessionId}
            "interface" = ${Interface}
            "issuer" = ${Issuer}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to LogAuthenticationContext<PSCustomObject>

.DESCRIPTION

Convert from JSON to LogAuthenticationContext<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

LogAuthenticationContext<PSCustomObject>
#>
function ConvertFrom-JsonToLogAuthenticationContext {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => LogAuthenticationContext' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LogAuthenticationContext
        $AllProperties = ("authenticationProvider", "authenticationStep", "credentialProvider", "credentialType", "externalSessionId", "interface", "issuer")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "authenticationProvider"))) { #optional property not found
            $AuthenticationProvider = $null
        } else {
            $AuthenticationProvider = $JsonParameters.PSobject.Properties["authenticationProvider"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "authenticationStep"))) { #optional property not found
            $AuthenticationStep = $null
        } else {
            $AuthenticationStep = $JsonParameters.PSobject.Properties["authenticationStep"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "credentialProvider"))) { #optional property not found
            $CredentialProvider = $null
        } else {
            $CredentialProvider = $JsonParameters.PSobject.Properties["credentialProvider"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "credentialType"))) { #optional property not found
            $CredentialType = $null
        } else {
            $CredentialType = $JsonParameters.PSobject.Properties["credentialType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "externalSessionId"))) { #optional property not found
            $ExternalSessionId = $null
        } else {
            $ExternalSessionId = $JsonParameters.PSobject.Properties["externalSessionId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "interface"))) { #optional property not found
            $Interface = $null
        } else {
            $Interface = $JsonParameters.PSobject.Properties["interface"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "issuer"))) { #optional property not found
            $Issuer = $null
        } else {
            $Issuer = $JsonParameters.PSobject.Properties["issuer"].value
        }

        $PSO = [PSCustomObject]@{
            "authenticationProvider" = ${AuthenticationProvider}
            "authenticationStep" = ${AuthenticationStep}
            "credentialProvider" = ${CredentialProvider}
            "credentialType" = ${CredentialType}
            "externalSessionId" = ${ExternalSessionId}
            "interface" = ${Interface}
            "issuer" = ${Issuer}
        }

        return $PSO
    }

}

