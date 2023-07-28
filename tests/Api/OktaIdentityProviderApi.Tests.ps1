#
# Okta Management
# Allows customers to easily access the Okta Management APIs
# Version: 3.0.0
# Contact: devex-public@okta.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'Okta.PowerShell' -name 'OktaOktaIdentityProviderApi' {
    Context 'Invoke-OktaActivateIdentityProvider' {
        It 'Test Invoke-OktaActivateIdentityProvider' {
            #$TestResult = Invoke-OktaActivateIdentityProvider -IdpId "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Copy-OktaIdentityProviderKey' {
        It 'Test Copy-OktaIdentityProviderKey' {
            #$TestResult = Copy-OktaIdentityProviderKey -IdpId "TEST_VALUE" -KeyId "TEST_VALUE" -TargetIdpId "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'New-OktaIdentityProvider' {
        It 'Test Initialize-OktaIdentityProvider Facebook' {
            
            $IdpCredentialsClient = Initialize-OktaIdentityProviderCredentialsClient -ClientId "your-client-id" -ClientSecret "your-client-secret"
            $IdpCredentials = Initialize-OktaIdentityProviderCredentials -Client $IdpCredentialsClient
            $Protocol = Initialize-OktaProtocol -Credentials $IdpCredentials -Type 'OAUTH2' -Algorithms @("public_profile", "email" ) 
            $AccountLink = Initialize-OktaPolicyAccountLink -Action 'AUTO'
            $Conditions = Initialize-OktaProvisioningConditions -Deprovisioned @{Action = "NONE"} -Suspended @{Action = "NONE"} 
            $Provisioning = Initialize-OktaProvisioning -Action 'AUTO' -ProfileMaster $True -Conditions $Conditions -Groups @{Action = "NONE"}
            $Subject = Initialize-OktaPolicySubject -UserNameTemplate @{Template = "idpuser.email"} -MatchType "USERNAME" 
            $Policy = Initialize-OktaIdentityProviderPolicy -AccountLink $AccountLink -Provisioning $Provisioning -Subject $Subject
            $NewIdp = Initialize-OktaIdentityProvider -Name "New idp" -Type "FACEBOOK" -Protocol $Protocol -Policy $Policy

            $NewIdp.Name | Should -Be "New idp"
            $NewIdp.Type | Should -Be "FACEBOOK"
            $NewIdp.Protocol.Credentials.Client.Client_Id | Should -Be "your-client-id"
            $NewIdp.Protocol.Credentials.Client.Client_Secret | Should -Be "your-client-secret"
            $NewIdp.Protocol.Type | Should -Be "OAUTH2"
            $NewIdp.Protocol.Algorithms.Count | Should -Be 2
            $NewIdp.Policy.AccountLink.Action | Should -Be "AUTO"
            $NewIdp.Policy.Provisioning.Action | Should -Be "AUTO"
            $NewIdp.Policy.Provisioning.ProfileMaster | Should -Be $True
            $NewIdp.Policy.Provisioning.Conditions.Deprovisioned.Action | Should -Be "NONE"
            $NewIdp.Policy.Provisioning.Conditions.Suspended.Action | Should -Be "NONE"
            $NewIdp.Policy.Provisioning.Groups.Action | Should -Be "NONE"
            $NewIdp.Policy.Subject.UserNameTemplate.Template  | Should -Be "idpuser.email"
            $NewIdp.Policy.Subject.MatchType  | Should -Be "USERNAME"
        }

        It 'Test New-OktaIdentityProvider Facebook' {
            $Content = '{"id":"0oa96k3igxBoeI0Rh1d7","issuerMode":"DYNAMIC","name":"New idp","status":"ACTIVE","created":"2023-07-28T19:52:19.000Z","lastUpdated":"2023-07-28T19:52:19.000Z","protocol":{"type":"OAUTH2","endpoints":{"authorization":{"url":"https://www.facebook.com/dialog/oauth","binding":"HTTP-REDIRECT"},"token":{"url":"https://graph.facebook.com/v2.8/oauth/access_token","binding":"HTTP-POST"}},"scopes":["public_profile","email"],"credentials":{"client":{"client_id":"your-client-id","client_secret":"your-client-secret"}}},"policy":{"provisioning":{"action":"AUTO","profileMaster":true,"groups":{"action":"NONE"},"conditions":{"deprovisioned":{"action":"NONE"},"suspended":{"action":"NONE"}}},"accountLink":{"filter":null,"action":"AUTO"},"subject":{"userNameTemplate":{"template":"idpuser.email"},"filter":null,"matchType":"USERNAME","matchAttribute":null},"maxClockSkew":0},"type":"FACEBOOK","_links":{"authorize":{"href":"https://testorg.com/oauth2/v1/authorize?idp=0oa96k3igxBoeI0Rh1d7&client_id={clientId}&response_type={responseType}&response_mode={responseMode}&scope={scopes}&redirect_uri={redirectUri}&state={state}&nonce={nonce}","templated":true,"hints":{"allow":["GET"]}},"clientRedirectUri":{"href":"https://testorg.com/oauth2/v1/authorize/callback","hints":{"allow":["POST"]}}}}' | ConvertFrom-Json

            $Response = @{
                Response   = $Content
                StatusCode = 200
                Headers = @{ "Content-Type" = @("application/json")}
            }

            Mock -ModuleName Okta.PowerShell Invoke-OktaApiClient { return $Response } -Verifiable

            $NewIdp = New-OktaIdentityProvider -IdentityProvider @{}

            Assert-MockCalled -ModuleName Okta.PowerShell Invoke-OktaApiClient -Times 1

            $NewIdp.Name | Should -Be "New idp"
            $NewIdp.Type | Should -Be "FACEBOOK"
            $NewIdp.Protocol.Credentials.Client.Client_Id | Should -Be "your-client-id"
            $NewIdp.Protocol.Credentials.Client.Client_Secret | Should -Be "your-client-secret"
            $NewIdp.Protocol.Type | Should -Be "OAUTH2"
            $NewIdp.Policy.AccountLink.Action | Should -Be "AUTO"
            $NewIdp.Policy.Provisioning.Action | Should -Be "AUTO"
            $NewIdp.Policy.Provisioning.ProfileMaster | Should -Be $True
            $NewIdp.Policy.Provisioning.Conditions.Deprovisioned.Action | Should -Be "NONE"
            $NewIdp.Policy.Provisioning.Conditions.Suspended.Action | Should -Be "NONE"
            $NewIdp.Policy.Provisioning.Groups.Action | Should -Be "NONE"
            $NewIdp.Policy.Subject.UserNameTemplate.Template  | Should -Be "idpuser.email"
            $NewIdp.Policy.Subject.MatchType  | Should -Be "USERNAME"
        }
    }

    Context 'New-OktaIdentityProviderKey' {
        It 'Test New-OktaIdentityProviderKey' {
            #$TestResult = New-OktaIdentityProviderKey -JsonWebKey "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Invoke-OktaDeactivateIdentityProvider' {
        It 'Test Invoke-OktaDeactivateIdentityProvider' {
            #$TestResult = Invoke-OktaDeactivateIdentityProvider -IdpId "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Invoke-OktaDeleteIdentityProvider' {
        It 'Test Invoke-OktaDeleteIdentityProvider' {
            #$TestResult = Invoke-OktaDeleteIdentityProvider -IdpId "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Invoke-OktaDeleteIdentityProviderKey' {
        It 'Test Invoke-OktaDeleteIdentityProviderKey' {
            #$TestResult = Invoke-OktaDeleteIdentityProviderKey -KeyId "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'New-OktaCsrForIdentityProvider' {
        It 'Test New-OktaCsrForIdentityProvider' {
            #$TestResult = New-OktaCsrForIdentityProvider -IdpId "TEST_VALUE" -Metadata "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'New-OktaIdentityProviderSigningKey' {
        It 'Test New-OktaIdentityProviderSigningKey' {
            #$TestResult = New-OktaIdentityProviderSigningKey -IdpId "TEST_VALUE" -ValidityYears "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Get-OktaCsrForIdentityProvider' {
        It 'Test Get-OktaCsrForIdentityProvider' {
            #$TestResult = Get-OktaCsrForIdentityProvider -IdpId "TEST_VALUE" -CsrId "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Get-OktaIdentityProvider' {
        It 'Test Get-OktaIdentityProvider' {
            #$TestResult = Get-OktaIdentityProvider -IdpId "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Get-OktaIdentityProviderApplicationUser' {
        It 'Test Get-OktaIdentityProviderApplicationUser' {
            #$TestResult = Get-OktaIdentityProviderApplicationUser -IdpId "TEST_VALUE" -UserId "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Get-OktaIdentityProviderKey' {
        It 'Test Get-OktaIdentityProviderKey' {
            #$TestResult = Get-OktaIdentityProviderKey -KeyId "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Get-OktaIdentityProviderSigningKey' {
        It 'Test Get-OktaIdentityProviderSigningKey' {
            #$TestResult = Get-OktaIdentityProviderSigningKey -IdpId "TEST_VALUE" -KeyId "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Invoke-OktaLinkUserToIdentityProvider' {
        It 'Test Invoke-OktaLinkUserToIdentityProvider' {
            #$TestResult = Invoke-OktaLinkUserToIdentityProvider -IdpId "TEST_VALUE" -UserId "TEST_VALUE" -UserIdentityProviderLinkRequest "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Invoke-OktaListCsrsForIdentityProvider' {
        It 'Test Invoke-OktaListCsrsForIdentityProvider' {
            #$TestResult = Invoke-OktaListCsrsForIdentityProvider -IdpId "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Invoke-OktaListIdentityProviderApplicationUsers' {
        It 'Test Invoke-OktaListIdentityProviderApplicationUsers' {
            #$TestResult = Invoke-OktaListIdentityProviderApplicationUsers -IdpId "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Invoke-OktaListIdentityProviderKeys' {
        It 'Test Invoke-OktaListIdentityProviderKeys' {
            #$TestResult = Invoke-OktaListIdentityProviderKeys -After "TEST_VALUE" -Limit "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Invoke-OktaListIdentityProviderSigningKeys' {
        It 'Test Invoke-OktaListIdentityProviderSigningKeys' {
            #$TestResult = Invoke-OktaListIdentityProviderSigningKeys -IdpId "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Invoke-OktaListIdentityProviders' {
        It 'Test Invoke-OktaListIdentityProviders' {
            #$TestResult = Invoke-OktaListIdentityProviders -Q "TEST_VALUE" -After "TEST_VALUE" -Limit "TEST_VALUE" -Type "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Invoke-OktaListSocialAuthTokens' {
        It 'Test Invoke-OktaListSocialAuthTokens' {
            #$TestResult = Invoke-OktaListSocialAuthTokens -IdpId "TEST_VALUE" -UserId "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Publish-OktaCsrForIdentityProvider' {
        It 'Test Publish-OktaCsrForIdentityProvider' {
            #$TestResult = Publish-OktaCsrForIdentityProvider -IdpId "TEST_VALUE" -CsrId "TEST_VALUE" -Body "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Revoke-OktaCsrForIdentityProvider' {
        It 'Test Revoke-OktaCsrForIdentityProvider' {
            #$TestResult = Revoke-OktaCsrForIdentityProvider -IdpId "TEST_VALUE" -CsrId "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Invoke-OktaUnlinkUserFromIdentityProvider' {
        It 'Test Invoke-OktaUnlinkUserFromIdentityProvider' {
            #$TestResult = Invoke-OktaUnlinkUserFromIdentityProvider -IdpId "TEST_VALUE" -UserId "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Update-OktaIdentityProvider' {
        It 'Test Update-OktaIdentityProvider' {
            #$TestResult = Update-OktaIdentityProvider -IdpId "TEST_VALUE" -IdentityProvider "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

}
