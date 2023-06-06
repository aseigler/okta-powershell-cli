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

.PARAMETER Name
The name of this email template.
.PARAMETER Embedded
No description available.
.PARAMETER Links
No description available.
.OUTPUTS

EmailTemplate<PSCustomObject>
#>

function Initialize-EmailTemplate {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Embedded},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Links}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => EmailTemplate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "_embedded" = ${Embedded}
            "_links" = ${Links}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to EmailTemplate<PSCustomObject>

.DESCRIPTION

Convert from JSON to EmailTemplate<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

EmailTemplate<PSCustomObject>
#>
function ConvertFrom-JsonToEmailTemplate {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => EmailTemplate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in EmailTemplate
        $AllProperties = ("name", "_embedded", "_links")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
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
            "name" = ${Name}
            "_embedded" = ${Embedded}
            "_links" = ${Links}
        }

        return $PSO
    }

}
