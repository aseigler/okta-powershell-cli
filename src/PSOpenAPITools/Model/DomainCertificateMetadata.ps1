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

.PARAMETER Expiration
No description available.
.PARAMETER Fingerprint
No description available.
.PARAMETER Subject
No description available.
.OUTPUTS

DomainCertificateMetadata<PSCustomObject>
#>

function Initialize-DomainCertificateMetadata {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Expiration},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Fingerprint},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Subject}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => DomainCertificateMetadata' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "expiration" = ${Expiration}
            "fingerprint" = ${Fingerprint}
            "subject" = ${Subject}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DomainCertificateMetadata<PSCustomObject>

.DESCRIPTION

Convert from JSON to DomainCertificateMetadata<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DomainCertificateMetadata<PSCustomObject>
#>
function ConvertFrom-JsonToDomainCertificateMetadata {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => DomainCertificateMetadata' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in DomainCertificateMetadata
        $AllProperties = ("expiration", "fingerprint", "subject")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "expiration"))) { #optional property not found
            $Expiration = $null
        } else {
            $Expiration = $JsonParameters.PSobject.Properties["expiration"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "fingerprint"))) { #optional property not found
            $Fingerprint = $null
        } else {
            $Fingerprint = $JsonParameters.PSobject.Properties["fingerprint"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "subject"))) { #optional property not found
            $Subject = $null
        } else {
            $Subject = $JsonParameters.PSobject.Properties["subject"].value
        }

        $PSO = [PSCustomObject]@{
            "expiration" = ${Expiration}
            "fingerprint" = ${Fingerprint}
            "subject" = ${Subject}
        }

        return $PSO
    }

}

