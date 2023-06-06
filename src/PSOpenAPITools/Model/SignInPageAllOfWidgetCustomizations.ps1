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

.PARAMETER SignInLabel
No description available.
.PARAMETER UsernameLabel
No description available.
.PARAMETER UsernameInfoTip
No description available.
.PARAMETER PasswordLabel
No description available.
.PARAMETER PasswordInfoTip
No description available.
.PARAMETER ShowPasswordVisibilityToggle
No description available.
.PARAMETER ShowUserIdentifier
No description available.
.PARAMETER ForgotPasswordLabel
No description available.
.PARAMETER ForgotPasswordUrl
No description available.
.PARAMETER UnlockAccountLabel
No description available.
.PARAMETER UnlockAccountUrl
No description available.
.PARAMETER HelpLabel
No description available.
.PARAMETER HelpUrl
No description available.
.PARAMETER CustomLink1Label
No description available.
.PARAMETER CustomLink1Url
No description available.
.PARAMETER CustomLink2Label
No description available.
.PARAMETER CustomLink2Url
No description available.
.PARAMETER AuthenticatorPageCustomLinkLabel
No description available.
.PARAMETER AuthenticatorPageCustomLinkUrl
No description available.
.PARAMETER ClassicRecoveryFlowEmailOrUsernameLabel
No description available.
.OUTPUTS

SignInPageAllOfWidgetCustomizations<PSCustomObject>
#>

function Initialize-SignInPageAllOfWidgetCustomizations {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SignInLabel},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UsernameLabel},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UsernameInfoTip},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PasswordLabel},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PasswordInfoTip},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ShowPasswordVisibilityToggle},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ShowUserIdentifier},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ForgotPasswordLabel},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ForgotPasswordUrl},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UnlockAccountLabel},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UnlockAccountUrl},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${HelpLabel},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${HelpUrl},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CustomLink1Label},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CustomLink1Url},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CustomLink2Label},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CustomLink2Url},
        [Parameter(Position = 17, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AuthenticatorPageCustomLinkLabel},
        [Parameter(Position = 18, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AuthenticatorPageCustomLinkUrl},
        [Parameter(Position = 19, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ClassicRecoveryFlowEmailOrUsernameLabel}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => SignInPageAllOfWidgetCustomizations' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "signInLabel" = ${SignInLabel}
            "usernameLabel" = ${UsernameLabel}
            "usernameInfoTip" = ${UsernameInfoTip}
            "passwordLabel" = ${PasswordLabel}
            "passwordInfoTip" = ${PasswordInfoTip}
            "showPasswordVisibilityToggle" = ${ShowPasswordVisibilityToggle}
            "showUserIdentifier" = ${ShowUserIdentifier}
            "forgotPasswordLabel" = ${ForgotPasswordLabel}
            "forgotPasswordUrl" = ${ForgotPasswordUrl}
            "unlockAccountLabel" = ${UnlockAccountLabel}
            "unlockAccountUrl" = ${UnlockAccountUrl}
            "helpLabel" = ${HelpLabel}
            "helpUrl" = ${HelpUrl}
            "customLink1Label" = ${CustomLink1Label}
            "customLink1Url" = ${CustomLink1Url}
            "customLink2Label" = ${CustomLink2Label}
            "customLink2Url" = ${CustomLink2Url}
            "authenticatorPageCustomLinkLabel" = ${AuthenticatorPageCustomLinkLabel}
            "authenticatorPageCustomLinkUrl" = ${AuthenticatorPageCustomLinkUrl}
            "classicRecoveryFlowEmailOrUsernameLabel" = ${ClassicRecoveryFlowEmailOrUsernameLabel}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SignInPageAllOfWidgetCustomizations<PSCustomObject>

.DESCRIPTION

Convert from JSON to SignInPageAllOfWidgetCustomizations<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SignInPageAllOfWidgetCustomizations<PSCustomObject>
#>
function ConvertFrom-JsonToSignInPageAllOfWidgetCustomizations {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => SignInPageAllOfWidgetCustomizations' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in SignInPageAllOfWidgetCustomizations
        $AllProperties = ("signInLabel", "usernameLabel", "usernameInfoTip", "passwordLabel", "passwordInfoTip", "showPasswordVisibilityToggle", "showUserIdentifier", "forgotPasswordLabel", "forgotPasswordUrl", "unlockAccountLabel", "unlockAccountUrl", "helpLabel", "helpUrl", "customLink1Label", "customLink1Url", "customLink2Label", "customLink2Url", "authenticatorPageCustomLinkLabel", "authenticatorPageCustomLinkUrl", "classicRecoveryFlowEmailOrUsernameLabel")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "signInLabel"))) { #optional property not found
            $SignInLabel = $null
        } else {
            $SignInLabel = $JsonParameters.PSobject.Properties["signInLabel"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "usernameLabel"))) { #optional property not found
            $UsernameLabel = $null
        } else {
            $UsernameLabel = $JsonParameters.PSobject.Properties["usernameLabel"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "usernameInfoTip"))) { #optional property not found
            $UsernameInfoTip = $null
        } else {
            $UsernameInfoTip = $JsonParameters.PSobject.Properties["usernameInfoTip"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "passwordLabel"))) { #optional property not found
            $PasswordLabel = $null
        } else {
            $PasswordLabel = $JsonParameters.PSobject.Properties["passwordLabel"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "passwordInfoTip"))) { #optional property not found
            $PasswordInfoTip = $null
        } else {
            $PasswordInfoTip = $JsonParameters.PSobject.Properties["passwordInfoTip"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "showPasswordVisibilityToggle"))) { #optional property not found
            $ShowPasswordVisibilityToggle = $null
        } else {
            $ShowPasswordVisibilityToggle = $JsonParameters.PSobject.Properties["showPasswordVisibilityToggle"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "showUserIdentifier"))) { #optional property not found
            $ShowUserIdentifier = $null
        } else {
            $ShowUserIdentifier = $JsonParameters.PSobject.Properties["showUserIdentifier"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "forgotPasswordLabel"))) { #optional property not found
            $ForgotPasswordLabel = $null
        } else {
            $ForgotPasswordLabel = $JsonParameters.PSobject.Properties["forgotPasswordLabel"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "forgotPasswordUrl"))) { #optional property not found
            $ForgotPasswordUrl = $null
        } else {
            $ForgotPasswordUrl = $JsonParameters.PSobject.Properties["forgotPasswordUrl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "unlockAccountLabel"))) { #optional property not found
            $UnlockAccountLabel = $null
        } else {
            $UnlockAccountLabel = $JsonParameters.PSobject.Properties["unlockAccountLabel"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "unlockAccountUrl"))) { #optional property not found
            $UnlockAccountUrl = $null
        } else {
            $UnlockAccountUrl = $JsonParameters.PSobject.Properties["unlockAccountUrl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "helpLabel"))) { #optional property not found
            $HelpLabel = $null
        } else {
            $HelpLabel = $JsonParameters.PSobject.Properties["helpLabel"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "helpUrl"))) { #optional property not found
            $HelpUrl = $null
        } else {
            $HelpUrl = $JsonParameters.PSobject.Properties["helpUrl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "customLink1Label"))) { #optional property not found
            $CustomLink1Label = $null
        } else {
            $CustomLink1Label = $JsonParameters.PSobject.Properties["customLink1Label"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "customLink1Url"))) { #optional property not found
            $CustomLink1Url = $null
        } else {
            $CustomLink1Url = $JsonParameters.PSobject.Properties["customLink1Url"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "customLink2Label"))) { #optional property not found
            $CustomLink2Label = $null
        } else {
            $CustomLink2Label = $JsonParameters.PSobject.Properties["customLink2Label"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "customLink2Url"))) { #optional property not found
            $CustomLink2Url = $null
        } else {
            $CustomLink2Url = $JsonParameters.PSobject.Properties["customLink2Url"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "authenticatorPageCustomLinkLabel"))) { #optional property not found
            $AuthenticatorPageCustomLinkLabel = $null
        } else {
            $AuthenticatorPageCustomLinkLabel = $JsonParameters.PSobject.Properties["authenticatorPageCustomLinkLabel"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "authenticatorPageCustomLinkUrl"))) { #optional property not found
            $AuthenticatorPageCustomLinkUrl = $null
        } else {
            $AuthenticatorPageCustomLinkUrl = $JsonParameters.PSobject.Properties["authenticatorPageCustomLinkUrl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "classicRecoveryFlowEmailOrUsernameLabel"))) { #optional property not found
            $ClassicRecoveryFlowEmailOrUsernameLabel = $null
        } else {
            $ClassicRecoveryFlowEmailOrUsernameLabel = $JsonParameters.PSobject.Properties["classicRecoveryFlowEmailOrUsernameLabel"].value
        }

        $PSO = [PSCustomObject]@{
            "signInLabel" = ${SignInLabel}
            "usernameLabel" = ${UsernameLabel}
            "usernameInfoTip" = ${UsernameInfoTip}
            "passwordLabel" = ${PasswordLabel}
            "passwordInfoTip" = ${PasswordInfoTip}
            "showPasswordVisibilityToggle" = ${ShowPasswordVisibilityToggle}
            "showUserIdentifier" = ${ShowUserIdentifier}
            "forgotPasswordLabel" = ${ForgotPasswordLabel}
            "forgotPasswordUrl" = ${ForgotPasswordUrl}
            "unlockAccountLabel" = ${UnlockAccountLabel}
            "unlockAccountUrl" = ${UnlockAccountUrl}
            "helpLabel" = ${HelpLabel}
            "helpUrl" = ${HelpUrl}
            "customLink1Label" = ${CustomLink1Label}
            "customLink1Url" = ${CustomLink1Url}
            "customLink2Label" = ${CustomLink2Label}
            "customLink2Url" = ${CustomLink2Url}
            "authenticatorPageCustomLinkLabel" = ${AuthenticatorPageCustomLinkLabel}
            "authenticatorPageCustomLinkUrl" = ${AuthenticatorPageCustomLinkUrl}
            "classicRecoveryFlowEmailOrUsernameLabel" = ${ClassicRecoveryFlowEmailOrUsernameLabel}
        }

        return $PSO
    }

}

