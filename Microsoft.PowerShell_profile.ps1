# To reload the profile: . $PROFILE

Import-Module PSReadLine
Import-Module -Name Terminal-Icons

# oh-my-posh --init --shell pwsh --config "$(scoop prefix oh-my-posh)\themes\zash.omp.json" | Invoke-Expression;
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\zash.omp.json" | Invoke-Expression

. $PSScriptRoot\profile_alias.ps1

Set-PSReadlineOption -EditMode vi
Set-PSReadlineOption -ViModeIndicator Prompt

# # https://techcommunity.microsoft.com/t5/itops-talk-blog/autocomplete-in-powershell/ba-p/2604524
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# https://learn.microsoft.com/en-us/dotnet/core/tools/enable-tab-autocomplete?WT.mc_id=modinfra-35653-salean#powershell
# PowerShell parameter completion shim for the dotnet CLI
Register-ArgumentCompleter -Native -CommandName dotnet -ScriptBlock {
     param($commandName, $wordToComplete, $cursorPosition)
         dotnet complete --position $cursorPosition "$wordToComplete" | ForEach-Object {
            [System.Management.Automation.CompletionResult]::new($_, $_, 'ParameterValue', $_)
         }
 }

# https://devblogs.microsoft.com/powershell/announcing-psreadline-2-1-with-predictive-intellisense/
# run: Install-Module PSReadLine -RequiredVersion 2.1.0
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -Colors @{ InlinePrediction = "$([char]0x1b)[36;7;238m"}

# Sometimes you enter a command but realize you forgot to do something else first.
# This binding will let you save that command in the history so you can recall it,
# but it doesn't actually execute.  It also clears the line with RevertLine so the
# undo stack is reset - though redo will still reconstruct the command line.
Set-PSReadLineKeyHandler -Key Alt+w `
                         -BriefDescription SaveInHistory `
                         -LongDescription "Save current line in history but do not execute" `
                         -ScriptBlock {
    param($key, $arg)

    $line = $null
    $cursor = $null
    [Microsoft.PowerShell.PSConsoleReadLine]::GetBufferState([ref]$line, [ref]$cursor)
    [Microsoft.PowerShell.PSConsoleReadLine]::AddToHistory($line)
    [Microsoft.PowerShell.PSConsoleReadLine]::RevertLine()
}

Set-PSReadLineKeyHandler -Chord F4 -ScriptBlock { [Microsoft.PowerShell.PSConsoleReadLine]::ScrollDisplayUp() }
Set-PSReadLineKeyHandler -Chord Ctrl+F4 -ScriptBlock { [Microsoft.PowerShell.PSConsoleReadLine]::ScrollDisplayDown() }
