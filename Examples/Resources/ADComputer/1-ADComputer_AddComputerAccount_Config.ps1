<#PSScriptInfo
.VERSION 1.0.0
.GUID ba7fb687-dad4-40b2-9776-c6b49386c297
.AUTHOR Microsoft Corporation
.COMPANYNAME Microsoft Corporation
.COPYRIGHT (c) Microsoft Corporation. All rights reserved.
.TAGS DSCConfiguration
.LICENSEURI https://github.com/PowerShell/ActiveDirectoryDsc/blob/master/LICENSE
.PROJECTURI https://github.com/PowerShell/ActiveDirectoryDsc
.ICONURI
.EXTERNALMODULEDEPENDENCIES
.REQUIREDSCRIPTS
.EXTERNALSCRIPTDEPENDENCIES
.RELEASENOTES First version.
.PRIVATEDATA 2016-Datacenter,2016-Datacenter-Server-Core
#>

#Requires -module ActiveDirectoryDsc

<#
    .DESCRIPTION
        While setting up IIS and stopping the default website is interesting, it isn’t quite useful yet.
        After all, people typically use IIS to set up websites of their own with custom protocol and bindings.
        Fortunately, using DSC, adding another website is as simple as using the File and xWebsite resources to copy the website content and configure the website.
#>
Configuration ADComputer_AddComputerAccount_Config
{
    param
    (
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [System.Management.Automation.PSCredential]
        $Credential
    )

    Import-DscResource -ModuleName ActiveDirectoryDsc

    node localhost
    {
        ADComputer 'CreateEnabled_SQL01'
        {
            ComputerName = 'SQL01'

            PsDscRunAsCredential = $Credential
        }

        ADComputer 'CreateEnabled_SQL02'
        {
            ComputerName      = 'SQL02'
            EnabledOnCreation = $true

            PsDscRunAsCredential = $Credential
        }
    }
}
