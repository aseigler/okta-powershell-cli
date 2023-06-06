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

.PARAMETER MaxEventsUsedForEvaluation
No description available.
.PARAMETER MinEventsNeededForEvaluation
No description available.
.OUTPUTS

BehaviorRuleSettingsAnomalousDevice<PSCustomObject>
#>

function Initialize-BehaviorRuleSettingsAnomalousDevice {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${MaxEventsUsedForEvaluation} = 20,
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${MinEventsNeededForEvaluation} = 0
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => BehaviorRuleSettingsAnomalousDevice' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($MaxEventsUsedForEvaluation -and $MaxEventsUsedForEvaluation -gt 100) {
          throw "invalid value for 'MaxEventsUsedForEvaluation', must be smaller than or equal to 100."
        }

        if ($MaxEventsUsedForEvaluation -and $MaxEventsUsedForEvaluation -lt 1) {
          throw "invalid value for 'MaxEventsUsedForEvaluation', must be greater than or equal to 1."
        }

        if ($MinEventsNeededForEvaluation -and $MinEventsNeededForEvaluation -gt 10) {
          throw "invalid value for 'MinEventsNeededForEvaluation', must be smaller than or equal to 10."
        }

        if ($MinEventsNeededForEvaluation -and $MinEventsNeededForEvaluation -lt 0) {
          throw "invalid value for 'MinEventsNeededForEvaluation', must be greater than or equal to 0."
        }


        $PSO = [PSCustomObject]@{
            "maxEventsUsedForEvaluation" = ${MaxEventsUsedForEvaluation}
            "minEventsNeededForEvaluation" = ${MinEventsNeededForEvaluation}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to BehaviorRuleSettingsAnomalousDevice<PSCustomObject>

.DESCRIPTION

Convert from JSON to BehaviorRuleSettingsAnomalousDevice<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

BehaviorRuleSettingsAnomalousDevice<PSCustomObject>
#>
function ConvertFrom-JsonToBehaviorRuleSettingsAnomalousDevice {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => BehaviorRuleSettingsAnomalousDevice' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BehaviorRuleSettingsAnomalousDevice
        $AllProperties = ("maxEventsUsedForEvaluation", "minEventsNeededForEvaluation")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "maxEventsUsedForEvaluation"))) { #optional property not found
            $MaxEventsUsedForEvaluation = $null
        } else {
            $MaxEventsUsedForEvaluation = $JsonParameters.PSobject.Properties["maxEventsUsedForEvaluation"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "minEventsNeededForEvaluation"))) { #optional property not found
            $MinEventsNeededForEvaluation = $null
        } else {
            $MinEventsNeededForEvaluation = $JsonParameters.PSobject.Properties["minEventsNeededForEvaluation"].value
        }

        $PSO = [PSCustomObject]@{
            "maxEventsUsedForEvaluation" = ${MaxEventsUsedForEvaluation}
            "minEventsNeededForEvaluation" = ${MinEventsNeededForEvaluation}
        }

        return $PSO
    }

}

