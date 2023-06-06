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

.PARAMETER Required
No description available.
.PARAMETER Style
No description available.
.OUTPUTS

ChannelBinding<PSCustomObject>
#>

function Initialize-ChannelBinding {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Required},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Style}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => ChannelBinding' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "required" = ${Required}
            "style" = ${Style}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ChannelBinding<PSCustomObject>

.DESCRIPTION

Convert from JSON to ChannelBinding<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ChannelBinding<PSCustomObject>
#>
function ConvertFrom-JsonToChannelBinding {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => ChannelBinding' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ChannelBinding
        $AllProperties = ("required", "style")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "required"))) { #optional property not found
            $Required = $null
        } else {
            $Required = $JsonParameters.PSobject.Properties["required"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "style"))) { #optional property not found
            $Style = $null
        } else {
            $Style = $JsonParameters.PSobject.Properties["style"].value
        }

        $PSO = [PSCustomObject]@{
            "required" = ${Required}
            "style" = ${Style}
        }

        return $PSO
    }

}

