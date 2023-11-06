Connect-ExchangeOnline -ExchangeEnvironmentName O365USGovGCCHigh

$CSV = Read-Host -Prompt 'Path to CSV file listing the users you want to add to the distro?'
$Distro = Read-Host -Prompt 'Email address for the distro you want to add these users to?'

Import-CSV -Path "$CSV" | Foreach-Object { Add-DistributionGroupMember -Identity "$Distro" -Member $_.Member }