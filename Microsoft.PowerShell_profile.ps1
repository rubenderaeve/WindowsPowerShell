# To reload the profile: . $PROFILE

Import-Module PSReadLine
Import-Module -Name Terminal-Icons

oh-my-posh --init --shell pwsh --config "$(scoop prefix oh-my-posh)\themes\zash.omp.json" | Invoke-Expression;
# oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\zash.omp.json" | Invoke-Expression

function Get-GitStatusShort { & git status -sb $args }
New-Alias -Name s -Value Get-GitStatusShort -Force -Option AllScope
function Get-GitStatus { & git status $args }
New-Alias -Name gs -Value Get-GitStatus -Force -Option AllScope
function Get-GitCommit { & git commit -ev $args }
New-Alias -Name c -Value Get-GitCommit -Force -Option AllScope
function Get-GitCommitAmendNoEdit { & git commit -v --amend --no-edit $args }
New-Alias -Name cam -Value Get-GitCommitAmendNoEdit -Force -Option AllScope
function Get-GitAddAll { & git add --all $args }
New-Alias -Name ga -Value Get-GitAddAll -Force -Option AllScope
function Get-GitAdd { & git add $args }
New-Alias -Name gad -Value Get-GitAdd -Force -Option AllScope
function Get-GitTree { & git log --graph --oneline --decorate $args }
New-Alias -Name t -Value Get-GitTree -Force -Option AllScope
function Get-GitPush { & git push $args }
New-Alias -Name ps -Value Get-GitPush -Force -Option AllScope
function Get-GitPushForce { & git push -f $args }
New-Alias -Name psf -Value Get-GitPushForce -Force -Option AllScope
function Get-GitPushOrigin { & git push --set-upstream origin $(git rev-parse --abbrev-ref HEAD) $args }
New-Alias -Name pso -Value Get-GitPushOrigin -Force -Option AllScope
function Get-GitPull { & git pull $args }
New-Alias -Name pl -Value Get-GitPull -Force -Option AllScope
function Get-GitFetch { & git fetch $args }
New-Alias -Name f -Value Get-GitFetch -Force -Option AllScope
function Get-GitCheckout { & git branch | findstr $args | Foreach { git checkout $_.trim() } }
New-Alias -Name co -Value Get-GitCheckout -Force -Option AllScope
function Get-GitCheckoutDevelop { & git checkout develop $args }
New-Alias -Name cod -Value Get-GitCheckoutDevelop -Force -Option AllScope
function Get-GitCheckoutBranch { & git checkout -b $args }
New-Alias -Name cob -Value Get-GitCheckoutBranch -Force -Option AllScope
function Get-GitBranch { & git branch $args }
New-Alias -Name b -Value Get-GitBranch -Force -Option AllScope
function Get-GitBranchMerged{ & git branch --merged develop | Select-String -Pattern '^(?!.*(master|develop)).*$' }
New-Alias -Name bm -Value Get-GitBranchMerged -Force -Option AllScope
function Get-GitBranchAll { & git branch --all $args }
New-Alias -Name gba -Value Get-GitBranchAll -Force -Option AllScope
function Get-GitBranchDelete{ & git branch -D $args }
New-Alias -Name gbd -Value Get-GitBranchDelete -Force -Option AllScope
function Get-GitBranchDeleteString{ & git branch | findstr $args | Foreach { git branch -d $_.trim() } }
New-Alias -Name bd -Value Get-GitBranchDeleteString -Force -Option AllScope
function Get-GitBranchDeleteForceString{ & git branch | findstr $args | Foreach { git branch -D $_.trim() } }
New-Alias -Name bD -Value Get-GitBranchDeleteForceString -Force -Option AllScope
function Get-GitBranchDeleteMerged{ & git branch --merged develop | Select-String -Pattern '^(?!.*(master|develop)).*$' | ForEach-Object { git branch -d $_.ToString().Trim() } }
New-Alias -Name bdm -Value Get-GitBranchDeleteMerged -Force -Option AllScope
function Get-GitFlowFeatureStart{ & git flow feature start $args }
New-Alias -Name gfs -Value Get-GitFlowFeatureStart -Force -Option AllScope
function Get-GitRemote { & git remote -v $args }
New-Alias -Name r -Value Get-GitRemote -Force -Option AllScope
function Get-GitCherryPick { & git cherry-pick $args }
New-Alias -Name gch -Value Get-GitCherryPick -Force -Option AllScope
function Get-GitDiff { & git diff -M $args }
New-Alias -Name gd -Value Get-GitDiff -Force -Option AllScope
function Get-GitDiffCached { & git diff -M --cached $args }
New-Alias -Name gdc -Value Get-GitDiffCached -Force -Option AllScope
function Get-GitRebase { & git rebase $args }
New-Alias -Name rb -Value Get-GitRebase -Force -Option AllScope
function Get-GitRebaseContinue { & git rebase --continue $args }
New-Alias -Name rbc -Value Get-GitRebaseContinue -Force -Option AllScope
function Get-GitRebaseInteractive { & git rebase -i $args }
New-Alias -Name rbi -Value Get-GitRebaseInteractive -Force -Option AllScope
function Get-GitRebaseInteractiveHead { & git rebase -i head~1 $args }
New-Alias -Name rbih -Value Get-GitRebaseInteractiveHead -Force -Option AllScope
function Get-GitRebaseOriginDevelop { & git rebase origin/develop $args }
New-Alias -Name rbod -Value Get-GitRebaseOriginDevelop -Force -Option AllScope
function Get-GitStash { & git stash $args }
New-Alias -Name st -Value Get-GitStash -Force -Option AllScope
function Get-GitStashPop { & git stash pop $args }
New-Alias -Name stp -Value Get-GitStashPop -Force -Option AllScope
function Get-GitShow { & git show $args }
New-Alias -Name sw -Value Get-GitShow -Force -Option AllScope
function Get-GitReset { & git reset $args }
New-Alias -Name gr -Value Get-GitReset -Force -Option AllScope
function Get-GitResetPatch { & git reset --patch $args }
New-Alias -Name grp -Value Get-GitResetPatch -Force -Option AllScope
function Get-GitResetHard { & git reset --hard $args }
New-Alias -Name grh -Value Get-GitResetHard -Force -Option AllScope
function Get-GitResetSoft { & git reset --soft  $args }
New-Alias -Name grs -Value Get-GitResetSoft -Force -Option AllScope
function Get-GitResetSoftHead { & git reset --soft head~1  $args }
New-Alias -Name grsh -Value Get-GitResetSoftHead -Force -Option AllScope
function Get-GitRestore { & git restore  $args }
New-Alias -Name gres -Value Get-GitRestore -Force -Option AllScope
function Get-GitRestoreStaged { & git restore --staged  $args }
New-Alias -Name gress -Value Get-GitRestoreStaged -Force -Option AllScope
function Get-GitSubModuleUpdateInite { & git submodule update --init  $args }
New-Alias -Name sui -Value Get-GitSubModuleUpdateInite -Force -Option AllScope
function Get-GitAddCommitAmendPushForce { & git add --all; git commit --amend --no-edit; git push -f }
New-Alias -Name acp -Value Get-GitAddCommitAmendPushForce -Force -Option AllScope
function Get-DotnetFormat { & dotnet format $args }
New-Alias -Name df -Value Get-DotnetFormat -Force -Option AllScope
function Get-GitLog { & git log --graph --full-history --all --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)' $args }
New-Alias -Name lg -Value Get-GitLog -Force -Option AllScope

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
