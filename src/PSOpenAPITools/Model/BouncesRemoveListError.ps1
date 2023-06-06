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

.PARAMETER EmailAddress
No description available.
.PARAMETER Reason
No description available.
.OUTPUTS

BouncesRemoveListError<PSCustomObject>
#>

function Initialize-BouncesRemoveListError {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EmailAddress},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Reason}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => BouncesRemoveListError' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "emailAddress" = ${EmailAddress}
            "reason" = ${Reason}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to BouncesRemoveListError<PSCustomObject>

.DESCRIPTION

Convert from JSON to BouncesRemoveListError<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

BouncesRemoveListError<PSCustomObject>
#>
function ConvertFrom-JsonToBouncesRemoveListError {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => BouncesRemoveListError' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BouncesRemoveListError
        $AllProperties = ("emailAddress", "reason")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "emailAddress"))) { #optional property not found
            $EmailAddress = $null
        } else {
            $EmailAddress = $JsonParameters.PSobject.Properties["emailAddress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reason"))) { #optional property not found
            $Reason = $null
        } else {
            $Reason = $JsonParameters.PSobject.Properties["reason"].value
        }

        $PSO = [PSCustomObject]@{
            "emailAddress" = ${EmailAddress}
            "reason" = ${Reason}
        }

        return $PSO
    }

}

