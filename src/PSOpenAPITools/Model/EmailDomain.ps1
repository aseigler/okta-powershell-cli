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

.PARAMETER Domain
No description available.
.PARAMETER DisplayName
No description available.
.PARAMETER UserName
No description available.
.OUTPUTS

EmailDomain<PSCustomObject>
#>

function Initialize-EmailDomain {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Domain},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayName},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UserName}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => EmailDomain' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Domain) {
            throw "invalid value for 'Domain', 'Domain' cannot be null."
        }

        if ($null -eq $DisplayName) {
            throw "invalid value for 'DisplayName', 'DisplayName' cannot be null."
        }

        if ($null -eq $UserName) {
            throw "invalid value for 'UserName', 'UserName' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "domain" = ${Domain}
            "displayName" = ${DisplayName}
            "userName" = ${UserName}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to EmailDomain<PSCustomObject>

.DESCRIPTION

Convert from JSON to EmailDomain<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

EmailDomain<PSCustomObject>
#>
function ConvertFrom-JsonToEmailDomain {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => EmailDomain' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in EmailDomain
        $AllProperties = ("domain", "displayName", "userName")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'domain' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "domain"))) {
            throw "Error! JSON cannot be serialized due to the required property 'domain' missing."
        } else {
            $Domain = $JsonParameters.PSobject.Properties["domain"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "displayName"))) {
            throw "Error! JSON cannot be serialized due to the required property 'displayName' missing."
        } else {
            $DisplayName = $JsonParameters.PSobject.Properties["displayName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "userName"))) {
            throw "Error! JSON cannot be serialized due to the required property 'userName' missing."
        } else {
            $UserName = $JsonParameters.PSobject.Properties["userName"].value
        }

        $PSO = [PSCustomObject]@{
            "domain" = ${Domain}
            "displayName" = ${DisplayName}
            "userName" = ${UserName}
        }

        return $PSO
    }

}

