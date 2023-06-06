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

.PARAMETER Body
The email's HTML body. May contain [variable references](https://velocity.apache.org/engine/1.7/user-guide.html#references).
.PARAMETER Subject
The email's subject. May contain [variable references](https://velocity.apache.org/engine/1.7/user-guide.html#references).
.PARAMETER Created
The UTC time at which this email customization was created.
.PARAMETER Id
A unique identifier for this email customization.
.PARAMETER IsDefault
Whether this is the default customization for the email template. Each customized email template must have exactly one default customization. Defaults to `true` for the first customization and `false` thereafter.
.PARAMETER Language
The language specified as an [IETF BCP 47 language tag](https://datatracker.ietf.org/doc/html/rfc5646).
.PARAMETER LastUpdated
The UTC time at which this email customization was last updated.
.PARAMETER Links
No description available.
.OUTPUTS

EmailCustomization<PSCustomObject>
#>

function Initialize-EmailCustomization {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Body},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Subject},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsDefault},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Language},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${LastUpdated},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Links}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => EmailCustomization' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Body) {
            throw "invalid value for 'Body', 'Body' cannot be null."
        }

        if ($null -eq $Subject) {
            throw "invalid value for 'Subject', 'Subject' cannot be null."
        }

        if ($null -eq $Language) {
            throw "invalid value for 'Language', 'Language' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "body" = ${Body}
            "subject" = ${Subject}
            "created" = ${Created}
            "id" = ${Id}
            "isDefault" = ${IsDefault}
            "language" = ${Language}
            "lastUpdated" = ${LastUpdated}
            "_links" = ${Links}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to EmailCustomization<PSCustomObject>

.DESCRIPTION

Convert from JSON to EmailCustomization<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

EmailCustomization<PSCustomObject>
#>
function ConvertFrom-JsonToEmailCustomization {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => EmailCustomization' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in EmailCustomization
        $AllProperties = ("body", "subject", "created", "id", "isDefault", "language", "lastUpdated", "_links")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'body' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "body"))) {
            throw "Error! JSON cannot be serialized due to the required property 'body' missing."
        } else {
            $Body = $JsonParameters.PSobject.Properties["body"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "subject"))) {
            throw "Error! JSON cannot be serialized due to the required property 'subject' missing."
        } else {
            $Subject = $JsonParameters.PSobject.Properties["subject"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "language"))) {
            throw "Error! JSON cannot be serialized due to the required property 'language' missing."
        } else {
            $Language = $JsonParameters.PSobject.Properties["language"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isDefault"))) { #optional property not found
            $IsDefault = $null
        } else {
            $IsDefault = $JsonParameters.PSobject.Properties["isDefault"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastUpdated"))) { #optional property not found
            $LastUpdated = $null
        } else {
            $LastUpdated = $JsonParameters.PSobject.Properties["lastUpdated"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "_links"))) { #optional property not found
            $Links = $null
        } else {
            $Links = $JsonParameters.PSobject.Properties["_links"].value
        }

        $PSO = [PSCustomObject]@{
            "body" = ${Body}
            "subject" = ${Subject}
            "created" = ${Created}
            "id" = ${Id}
            "isDefault" = ${IsDefault}
            "language" = ${Language}
            "lastUpdated" = ${LastUpdated}
            "_links" = ${Links}
        }

        return $PSO
    }

}

