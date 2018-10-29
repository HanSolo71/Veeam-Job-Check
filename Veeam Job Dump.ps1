Import-Module VMware.VimAutomation.Cis.Core
Import-Module VMware.VimAutomation.Common
Import-Module VMware.VimAutomation.Core


Connect-VIServer vcenter.corp.com
$DailyVeeamJob = Get-VM | Get-Annotation -Name Veeam | Sort-Object
$ArchiveVeeamJob = Get-VM | Get-Annotation -Name "Veeam Archive" | Sort-Object

$DailyVeeamJob | Out-GridView
$ArchiveVeeamJob | Out-GridView
