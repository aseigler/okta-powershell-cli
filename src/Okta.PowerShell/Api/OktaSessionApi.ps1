#
# Okta Management
# Allows customers to easily access the Okta Management APIs
# Version: 3.0.0
# Contact: devex-public@okta.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Create a Session with Session Token

.DESCRIPTION

No description available.

.PARAMETER CreateSessionRequest
No description available.


.PARAMETER Uri

Specifies the Uri to be used when making the request. Recommended for paginated results. Optional.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

Session
#>
function New-OktaSession {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${CreateSessionRequest},
        [Parameter(ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Uri},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: New-OktaSession' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-OktaConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/api/v1/sessions'

        if ($Uri) {
            if ($Uri.StartsWith("http")){
                # We need relative URI
                $LocalUri = [uri]$Uri
                $ParsedQueryString = [System.Web.HttpUtility]::ParseQueryString($LocalUri.Query)
                $i = 0
                foreach($QueryStringObject in $ParsedQueryString) {
                    $LocalVarQueryParameters[$QueryStringObject] = $ParsedQueryString[$i]
                    $i++
                }
                $LocalVarUri = $LocalUri.LocalPath
            }
            else {
                $LocalVarUri = $Uri
            }
        }

        if (!$CreateSessionRequest) {
            throw "Error! The required parameter `CreateSessionRequest` missing when calling createSession."
        }

        $LocalVarBodyParameter = $CreateSessionRequest | ConvertTo-Json -Depth 100

        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["apiToken"]) {
            $LocalVarHeaderParameters['apiToken'] = $Configuration["ApiKey"]["apiToken"]
            Write-Verbose ("Using API key 'apiToken' in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }

        if ($Configuration["AccessToken"]) {
            $LocalVarHeaderParameters['Authorization'] = "Bearer " + $Configuration["AccessToken"]
            Write-Verbose ("Using Bearer authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-OktaApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "Session" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            if ($null -ne $LocalVarResult.Headers.Link) {
                foreach($Link in $LocalVarResult.Headers.Link)   {
                    # Link looks like '<https://myorg.okta.com/api/v1/groups?after=00g9erhe4rJGXhdYs5d7&limit=1>;rel="next"
                    if ($Link.Contains('rel="next"', 'InvariantCultureIgnoreCase')) {
                        $LinkValue = $Link.split(";")[0].ToString()
                        $LocalVarResult.NextPageUri = $LinkValue -replace '[<>]',''
                    }
                }
            }
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Delete a Session

.DESCRIPTION

No description available.

.PARAMETER SessionId
No description available.


.PARAMETER Uri

Specifies the Uri to be used when making the request. Recommended for paginated results. Optional.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Stop-OktaSession {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${SessionId},
        [Parameter(ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Uri},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Stop-OktaSession' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-OktaConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/api/v1/sessions/{sessionId}'
        if (!$SessionId) {
            throw "Error! The required parameter `SessionId` missing when calling endSession."
        }
        $LocalVarUri = $LocalVarUri.replace('{sessionId}', [System.Web.HTTPUtility]::UrlEncode($SessionId))

        if ($Uri) {
            if ($Uri.StartsWith("http")){
                # We need relative URI
                $LocalUri = [uri]$Uri
                $ParsedQueryString = [System.Web.HttpUtility]::ParseQueryString($LocalUri.Query)
                $i = 0
                foreach($QueryStringObject in $ParsedQueryString) {
                    $LocalVarQueryParameters[$QueryStringObject] = $ParsedQueryString[$i]
                    $i++
                }
                $LocalVarUri = $LocalUri.LocalPath
            }
            else {
                $LocalVarUri = $Uri
            }
        }

        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["apiToken"]) {
            $LocalVarHeaderParameters['apiToken'] = $Configuration["ApiKey"]["apiToken"]
            Write-Verbose ("Using API key 'apiToken' in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }


        if ($Configuration["AccessToken"]) {
            $LocalVarHeaderParameters['Authorization'] = "Bearer " + $Configuration["AccessToken"]
            Write-Verbose ("Using Bearer authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-OktaApiClient -Method 'DELETE' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            if ($null -ne $LocalVarResult.Headers.Link) {
                foreach($Link in $LocalVarResult.Headers.Link)   {
                    # Link looks like '<https://myorg.okta.com/api/v1/groups?after=00g9erhe4rJGXhdYs5d7&limit=1>;rel="next"
                    if ($Link.Contains('rel="next"', 'InvariantCultureIgnoreCase')) {
                        $LinkValue = $Link.split(";")[0].ToString()
                        $LocalVarResult.NextPageUri = $LinkValue -replace '[<>]',''
                    }
                }
            }
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Retrieve a Session

.DESCRIPTION

No description available.

.PARAMETER SessionId
No description available.


.PARAMETER Uri

Specifies the Uri to be used when making the request. Recommended for paginated results. Optional.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

Session
#>
function Get-OktaSession {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${SessionId},
        [Parameter(ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Uri},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-OktaSession' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-OktaConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/api/v1/sessions/{sessionId}'
        if (!$SessionId) {
            throw "Error! The required parameter `SessionId` missing when calling getSession."
        }
        $LocalVarUri = $LocalVarUri.replace('{sessionId}', [System.Web.HTTPUtility]::UrlEncode($SessionId))

        if ($Uri) {
            if ($Uri.StartsWith("http")){
                # We need relative URI
                $LocalUri = [uri]$Uri
                $ParsedQueryString = [System.Web.HttpUtility]::ParseQueryString($LocalUri.Query)
                $i = 0
                foreach($QueryStringObject in $ParsedQueryString) {
                    $LocalVarQueryParameters[$QueryStringObject] = $ParsedQueryString[$i]
                    $i++
                }
                $LocalVarUri = $LocalUri.LocalPath
            }
            else {
                $LocalVarUri = $Uri
            }
        }

        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["apiToken"]) {
            $LocalVarHeaderParameters['apiToken'] = $Configuration["ApiKey"]["apiToken"]
            Write-Verbose ("Using API key 'apiToken' in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }


        if ($Configuration["AccessToken"]) {
            $LocalVarHeaderParameters['Authorization'] = "Bearer " + $Configuration["AccessToken"]
            Write-Verbose ("Using Bearer authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-OktaApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "Session" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            if ($null -ne $LocalVarResult.Headers.Link) {
                foreach($Link in $LocalVarResult.Headers.Link)   {
                    # Link looks like '<https://myorg.okta.com/api/v1/groups?after=00g9erhe4rJGXhdYs5d7&limit=1>;rel="next"
                    if ($Link.Contains('rel="next"', 'InvariantCultureIgnoreCase')) {
                        $LinkValue = $Link.split(";")[0].ToString()
                        $LocalVarResult.NextPageUri = $LinkValue -replace '[<>]',''
                    }
                }
            }
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Refresh a Session

.DESCRIPTION

No description available.

.PARAMETER SessionId
No description available.


.PARAMETER Uri

Specifies the Uri to be used when making the request. Recommended for paginated results. Optional.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

Session
#>
function Invoke-OktaRefreshSession {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${SessionId},
        [Parameter(ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Uri},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-OktaRefreshSession' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-OktaConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/api/v1/sessions/{sessionId}/lifecycle/refresh'
        if (!$SessionId) {
            throw "Error! The required parameter `SessionId` missing when calling refreshSession."
        }
        $LocalVarUri = $LocalVarUri.replace('{sessionId}', [System.Web.HTTPUtility]::UrlEncode($SessionId))

        if ($Uri) {
            if ($Uri.StartsWith("http")){
                # We need relative URI
                $LocalUri = [uri]$Uri
                $ParsedQueryString = [System.Web.HttpUtility]::ParseQueryString($LocalUri.Query)
                $i = 0
                foreach($QueryStringObject in $ParsedQueryString) {
                    $LocalVarQueryParameters[$QueryStringObject] = $ParsedQueryString[$i]
                    $i++
                }
                $LocalVarUri = $LocalUri.LocalPath
            }
            else {
                $LocalVarUri = $Uri
            }
        }

        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["apiToken"]) {
            $LocalVarHeaderParameters['apiToken'] = $Configuration["ApiKey"]["apiToken"]
            Write-Verbose ("Using API key 'apiToken' in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }


        if ($Configuration["AccessToken"]) {
            $LocalVarHeaderParameters['Authorization'] = "Bearer " + $Configuration["AccessToken"]
            Write-Verbose ("Using Bearer authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-OktaApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "Session" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            if ($null -ne $LocalVarResult.Headers.Link) {
                foreach($Link in $LocalVarResult.Headers.Link)   {
                    # Link looks like '<https://myorg.okta.com/api/v1/groups?after=00g9erhe4rJGXhdYs5d7&limit=1>;rel="next"
                    if ($Link.Contains('rel="next"', 'InvariantCultureIgnoreCase')) {
                        $LinkValue = $Link.split(";")[0].ToString()
                        $LocalVarResult.NextPageUri = $LinkValue -replace '[<>]',''
                    }
                }
            }
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

