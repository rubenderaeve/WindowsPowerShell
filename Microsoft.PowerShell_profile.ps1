Import-Module PSReadLine
Import-Module -Name Terminal-Icons

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\zash.omp.json" | Invoke-Expression

. $PSScriptRoot\psreadline_config.ps1

. $PSScriptRoot\tab_completion.ps1

. $PSScriptRoot\save_in_history.ps1

. $PSScriptRoot\profile_alias.ps1
