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

.PARAMETER Ref
No description available.
.OUTPUTS

UserSchemaPropertiesProfileItem<PSCustomObject>
#>

function Initialize-UserSchemaPropertiesProfileItem {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Ref}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => UserSchemaPropertiesProfileItem' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "$ref" = ${Ref}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to UserSchemaPropertiesProfileItem<PSCustomObject>

.DESCRIPTION

Convert from JSON to UserSchemaPropertiesProfileItem<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

UserSchemaPropertiesProfileItem<PSCustomObject>
#>
function ConvertFrom-JsonToUserSchemaPropertiesProfileItem {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => UserSchemaPropertiesProfileItem' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in UserSchemaPropertiesProfileItem
        $AllProperties = ("$ref")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "$ref"))) { #optional property not found
            $Ref = $null
        } else {
            $Ref = $JsonParameters.PSobject.Properties["$ref"].value
        }

        $PSO = [PSCustomObject]@{
            "$ref" = ${Ref}
        }

        return $PSO
    }

}

