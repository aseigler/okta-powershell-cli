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

.PARAMETER App
No description available.
.PARAMETER Apps
No description available.
.PARAMETER AuthContext
No description available.
.PARAMETER AuthProvider
No description available.
.PARAMETER BeforeScheduledAction
No description available.
.PARAMETER Clients
No description available.
.PARAMETER Context
No description available.
.PARAMETER Device
No description available.
.PARAMETER GrantTypes
No description available.
.PARAMETER Groups
No description available.
.PARAMETER IdentityProvider
No description available.
.PARAMETER MdmEnrollment
No description available.
.PARAMETER Network
No description available.
.PARAMETER People
No description available.
.PARAMETER Platform
No description available.
.PARAMETER Risk
No description available.
.PARAMETER RiskScore
No description available.
.PARAMETER Scopes
No description available.
.PARAMETER UserIdentifier
No description available.
.PARAMETER Users
No description available.
.PARAMETER UserStatus
No description available.
.OUTPUTS

PasswordPolicyRuleConditions<PSCustomObject>
#>

function Initialize-PasswordPolicyRuleConditions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${App},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Apps},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AuthContext},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AuthProvider},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${BeforeScheduledAction},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Clients},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Context},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Device},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${GrantTypes},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Groups},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${IdentityProvider},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${MdmEnrollment},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Network},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${People},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Platform},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Risk},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RiskScore},
        [Parameter(Position = 17, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Scopes},
        [Parameter(Position = 18, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${UserIdentifier},
        [Parameter(Position = 19, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Users},
        [Parameter(Position = 20, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${UserStatus}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => PasswordPolicyRuleConditions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "app" = ${App}
            "apps" = ${Apps}
            "authContext" = ${AuthContext}
            "authProvider" = ${AuthProvider}
            "beforeScheduledAction" = ${BeforeScheduledAction}
            "clients" = ${Clients}
            "context" = ${Context}
            "device" = ${Device}
            "grantTypes" = ${GrantTypes}
            "groups" = ${Groups}
            "identityProvider" = ${IdentityProvider}
            "mdmEnrollment" = ${MdmEnrollment}
            "network" = ${Network}
            "people" = ${People}
            "platform" = ${Platform}
            "risk" = ${Risk}
            "riskScore" = ${RiskScore}
            "scopes" = ${Scopes}
            "userIdentifier" = ${UserIdentifier}
            "users" = ${Users}
            "userStatus" = ${UserStatus}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PasswordPolicyRuleConditions<PSCustomObject>

.DESCRIPTION

Convert from JSON to PasswordPolicyRuleConditions<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PasswordPolicyRuleConditions<PSCustomObject>
#>
function ConvertFrom-JsonToPasswordPolicyRuleConditions {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => PasswordPolicyRuleConditions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PasswordPolicyRuleConditions
        $AllProperties = ("app", "apps", "authContext", "authProvider", "beforeScheduledAction", "clients", "context", "device", "grantTypes", "groups", "identityProvider", "mdmEnrollment", "network", "people", "platform", "risk", "riskScore", "scopes", "userIdentifier", "users", "userStatus")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "app"))) { #optional property not found
            $App = $null
        } else {
            $App = $JsonParameters.PSobject.Properties["app"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "apps"))) { #optional property not found
            $Apps = $null
        } else {
            $Apps = $JsonParameters.PSobject.Properties["apps"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "authContext"))) { #optional property not found
            $AuthContext = $null
        } else {
            $AuthContext = $JsonParameters.PSobject.Properties["authContext"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "authProvider"))) { #optional property not found
            $AuthProvider = $null
        } else {
            $AuthProvider = $JsonParameters.PSobject.Properties["authProvider"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "beforeScheduledAction"))) { #optional property not found
            $BeforeScheduledAction = $null
        } else {
            $BeforeScheduledAction = $JsonParameters.PSobject.Properties["beforeScheduledAction"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "clients"))) { #optional property not found
            $Clients = $null
        } else {
            $Clients = $JsonParameters.PSobject.Properties["clients"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "context"))) { #optional property not found
            $Context = $null
        } else {
            $Context = $JsonParameters.PSobject.Properties["context"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "device"))) { #optional property not found
            $Device = $null
        } else {
            $Device = $JsonParameters.PSobject.Properties["device"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "grantTypes"))) { #optional property not found
            $GrantTypes = $null
        } else {
            $GrantTypes = $JsonParameters.PSobject.Properties["grantTypes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "groups"))) { #optional property not found
            $Groups = $null
        } else {
            $Groups = $JsonParameters.PSobject.Properties["groups"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityProvider"))) { #optional property not found
            $IdentityProvider = $null
        } else {
            $IdentityProvider = $JsonParameters.PSobject.Properties["identityProvider"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "mdmEnrollment"))) { #optional property not found
            $MdmEnrollment = $null
        } else {
            $MdmEnrollment = $JsonParameters.PSobject.Properties["mdmEnrollment"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "network"))) { #optional property not found
            $Network = $null
        } else {
            $Network = $JsonParameters.PSobject.Properties["network"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "people"))) { #optional property not found
            $People = $null
        } else {
            $People = $JsonParameters.PSobject.Properties["people"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "platform"))) { #optional property not found
            $Platform = $null
        } else {
            $Platform = $JsonParameters.PSobject.Properties["platform"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "risk"))) { #optional property not found
            $Risk = $null
        } else {
            $Risk = $JsonParameters.PSobject.Properties["risk"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "riskScore"))) { #optional property not found
            $RiskScore = $null
        } else {
            $RiskScore = $JsonParameters.PSobject.Properties["riskScore"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "scopes"))) { #optional property not found
            $Scopes = $null
        } else {
            $Scopes = $JsonParameters.PSobject.Properties["scopes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "userIdentifier"))) { #optional property not found
            $UserIdentifier = $null
        } else {
            $UserIdentifier = $JsonParameters.PSobject.Properties["userIdentifier"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "users"))) { #optional property not found
            $Users = $null
        } else {
            $Users = $JsonParameters.PSobject.Properties["users"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "userStatus"))) { #optional property not found
            $UserStatus = $null
        } else {
            $UserStatus = $JsonParameters.PSobject.Properties["userStatus"].value
        }

        $PSO = [PSCustomObject]@{
            "app" = ${App}
            "apps" = ${Apps}
            "authContext" = ${AuthContext}
            "authProvider" = ${AuthProvider}
            "beforeScheduledAction" = ${BeforeScheduledAction}
            "clients" = ${Clients}
            "context" = ${Context}
            "device" = ${Device}
            "grantTypes" = ${GrantTypes}
            "groups" = ${Groups}
            "identityProvider" = ${IdentityProvider}
            "mdmEnrollment" = ${MdmEnrollment}
            "network" = ${Network}
            "people" = ${People}
            "platform" = ${Platform}
            "risk" = ${Risk}
            "riskScore" = ${RiskScore}
            "scopes" = ${Scopes}
            "userIdentifier" = ${UserIdentifier}
            "users" = ${Users}
            "userStatus" = ${UserStatus}
        }

        return $PSO
    }

}

