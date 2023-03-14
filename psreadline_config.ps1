# https://devblogs.microsoft.com/powershell/announcing-psreadline-2-1-with-predictive-intellisense/
# run: Install-Module PSReadLine -RequiredVersion 2.1.0
Set-PSReadlineOption -EditMode vi
Set-PSReadlineOption -ViModeIndicator Prompt
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -Colors @{ InlinePrediction = "$([char]0x1b)[36;7;238m"}

# https://techcommunity.microsoft.com/t5/itops-talk-blog/autocomplete-in-powershell/ba-p/2604524
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadLineKeyHandler -Chord F4 -ScriptBlock { [Microsoft.PowerShell.PSConsoleReadLine]::ScrollDisplayUp() }
Set-PSReadLineKeyHandler -Chord Ctrl+F4 -ScriptBlock { [Microsoft.PowerShell.PSConsoleReadLine]::ScrollDisplayDown() }
