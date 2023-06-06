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

.PARAMETER ExpiresAt
No description available.
.PARAMETER FactorResult
No description available.
.PARAMETER FactorResultMessage
No description available.
.PARAMETER Embedded
No description available.
.PARAMETER Links
No description available.
.OUTPUTS

VerifyUserFactorResponse<PSCustomObject>
#>

function Initialize-VerifyUserFactorResponse {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${ExpiresAt},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${FactorResult},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FactorResultMessage},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Embedded},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Links}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => VerifyUserFactorResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "expiresAt" = ${ExpiresAt}
            "factorResult" = ${FactorResult}
            "factorResultMessage" = ${FactorResultMessage}
            "_embedded" = ${Embedded}
            "_links" = ${Links}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to VerifyUserFactorResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to VerifyUserFactorResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

VerifyUserFactorResponse<PSCustomObject>
#>
function ConvertFrom-JsonToVerifyUserFactorResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => VerifyUserFactorResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in VerifyUserFactorResponse
        $AllProperties = ("expiresAt", "factorResult", "factorResultMessage", "_embedded", "_links")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "expiresAt"))) { #optional property not found
            $ExpiresAt = $null
        } else {
            $ExpiresAt = $JsonParameters.PSobject.Properties["expiresAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "factorResult"))) { #optional property not found
            $FactorResult = $null
        } else {
            $FactorResult = $JsonParameters.PSobject.Properties["factorResult"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "factorResultMessage"))) { #optional property not found
            $FactorResultMessage = $null
        } else {
            $FactorResultMessage = $JsonParameters.PSobject.Properties["factorResultMessage"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "_embedded"))) { #optional property not found
            $Embedded = $null
        } else {
            $Embedded = $JsonParameters.PSobject.Properties["_embedded"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "_links"))) { #optional property not found
            $Links = $null
        } else {
            $Links = $JsonParameters.PSobject.Properties["_links"].value
        }

        $PSO = [PSCustomObject]@{
            "expiresAt" = ${ExpiresAt}
            "factorResult" = ${FactorResult}
            "factorResultMessage" = ${FactorResultMessage}
            "_embedded" = ${Embedded}
            "_links" = ${Links}
        }

        return $PSO
    }

}
