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

.PARAMETER Credentials
No description available.
.PARAMETER Name
No description available.
.PARAMETER Settings
No description available.
.OUTPUTS

BasicAuthApplicationAllOf<PSCustomObject>
#>

function Initialize-BasicAuthApplicationAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Credentials},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name} = "template_basic_auth",
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Settings}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => BasicAuthApplicationAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "credentials" = ${Credentials}
            "name" = ${Name}
            "settings" = ${Settings}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to BasicAuthApplicationAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to BasicAuthApplicationAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

BasicAuthApplicationAllOf<PSCustomObject>
#>
function ConvertFrom-JsonToBasicAuthApplicationAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => BasicAuthApplicationAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BasicAuthApplicationAllOf
        $AllProperties = ("credentials", "name", "settings")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "credentials"))) { #optional property not found
            $Credentials = $null
        } else {
            $Credentials = $JsonParameters.PSobject.Properties["credentials"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "settings"))) { #optional property not found
            $Settings = $null
        } else {
            $Settings = $JsonParameters.PSobject.Properties["settings"].value
        }

        $PSO = [PSCustomObject]@{
            "credentials" = ${Credentials}
            "name" = ${Name}
            "settings" = ${Settings}
        }

        return $PSO
    }

}

