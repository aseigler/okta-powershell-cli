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

.PARAMETER Config
No description available.
.PARAMETER Type
No description available.
.PARAMETER Version
No description available.
.OUTPUTS

EventHookChannel<PSCustomObject>
#>

function Initialize-EventHookChannel {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Config},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Type},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Version}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => EventHookChannel' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "config" = ${Config}
            "type" = ${Type}
            "version" = ${Version}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to EventHookChannel<PSCustomObject>

.DESCRIPTION

Convert from JSON to EventHookChannel<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

EventHookChannel<PSCustomObject>
#>
function ConvertFrom-JsonToEventHookChannel {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => EventHookChannel' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in EventHookChannel
        $AllProperties = ("config", "type", "version")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "config"))) { #optional property not found
            $Config = $null
        } else {
            $Config = $JsonParameters.PSobject.Properties["config"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "version"))) { #optional property not found
            $Version = $null
        } else {
            $Version = $JsonParameters.PSobject.Properties["version"].value
        }

        $PSO = [PSCustomObject]@{
            "config" = ${Config}
            "type" = ${Type}
            "version" = ${Version}
        }

        return $PSO
    }

}

