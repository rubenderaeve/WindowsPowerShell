Import-Module PSReadLine
Import-Module -Name Terminal-Icons

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\zash.omp.json" | Invoke-Expression

. $PSScriptRoot\psreadline_config.ps1

. $PSScriptRoot\tab_completion.ps1

. $PSScriptRoot\save_in_history.ps1

. $PSScriptRoot\profile_alias.ps1
. $PSScriptRoot\git_alias.ps1
. $PSScriptRoot\profile_alias.ps1

# Check if the visual_studio_alias.ps1 file exists before loading it
$visualStudioAliasPath = "C:\vdev\alias\visual_studio_alias.ps1"
if (Test-Path $visualStudioAliasPath) {
    . $visualStudioAliasPath
}

# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

Invoke-Expression (& { (zoxide init powershell | Out-String) })
