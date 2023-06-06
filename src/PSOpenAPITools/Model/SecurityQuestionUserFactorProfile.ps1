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

.PARAMETER Answer
No description available.
.PARAMETER Question
No description available.
.PARAMETER QuestionText
No description available.
.OUTPUTS

SecurityQuestionUserFactorProfile<PSCustomObject>
#>

function Initialize-SecurityQuestionUserFactorProfile {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Answer},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Question},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${QuestionText}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => SecurityQuestionUserFactorProfile' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "answer" = ${Answer}
            "question" = ${Question}
            "questionText" = ${QuestionText}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SecurityQuestionUserFactorProfile<PSCustomObject>

.DESCRIPTION

Convert from JSON to SecurityQuestionUserFactorProfile<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SecurityQuestionUserFactorProfile<PSCustomObject>
#>
function ConvertFrom-JsonToSecurityQuestionUserFactorProfile {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => SecurityQuestionUserFactorProfile' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in SecurityQuestionUserFactorProfile
        $AllProperties = ("answer", "question", "questionText")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "answer"))) { #optional property not found
            $Answer = $null
        } else {
            $Answer = $JsonParameters.PSobject.Properties["answer"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "question"))) { #optional property not found
            $Question = $null
        } else {
            $Question = $JsonParameters.PSobject.Properties["question"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "questionText"))) { #optional property not found
            $QuestionText = $null
        } else {
            $QuestionText = $JsonParameters.PSobject.Properties["questionText"].value
        }

        $PSO = [PSCustomObject]@{
            "answer" = ${Answer}
            "question" = ${Question}
            "questionText" = ${QuestionText}
        }

        return $PSO
    }

}

