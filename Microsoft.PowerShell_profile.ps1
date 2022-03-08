oh-my-posh --init --shell pwsh --config "$(scoop prefix oh-my-posh)\themes\lambda.omp.json" | Invoke-Expression;
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
New-Alias -Name psf -Value Get-GitPush -Force -Option AllScope
function Get-GitPushOrigin { & git push --set-upstream origin $(git rev-parse --abbrev-ref HEAD) $args }
New-Alias -Name pso -Value Get-GitPushOrigin -Force -Option AllScope
function Get-GitPull { & git pull $args }
New-Alias -Name pl -Value Get-GitPull -Force -Option AllScope
function Get-GitFetch { & git fetch $args }
New-Alias -Name f -Value Get-GitFetch -Force -Option AllScope
function Get-GitCheckout { & git checkout $args }
New-Alias -Name co -Value Get-GitCheckout -Force -Option AllScope
function Get-GitCheckoutDevelop { & git checkout develop $args }
New-Alias -Name cod -Value Get-GitCheckoutDevelop -Force -Option AllScope
function Get-GitCheckoutBranch { & git checkout -b $args }
New-Alias -Name cob -Value Get-GitCheckoutBranch -Force -Option AllScope
function Get-GitBranch { & git branch $args }
New-Alias -Name b -Value Get-GitBranch -Force -Option AllScope
function Get-GitBranchAll { & git branch --all $args }
New-Alias -Name gba -Value Get-GitBranchAll -Force -Option AllScope
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
function Get-GitResetSoftHead { & git reset --soft HEAD~ $args }
New-Alias -Name grsh -Value Get-GitResetSoftHead -Force -Option AllScope
function Get-GitAddCommitAmendPushForce { & git add --all; git commit --amend --no-edit; git push -f }
New-Alias -Name acp -Value Get-GitAddCommitAmendPushForce -Force -Option AllScope
function Get-GitLog { & git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)' $args }
New-Alias -Name lg -Value Get-GitLog -Force -Option AllScope
function Get-DotnetFormat { & dotnet format $args }
New-Alias -Name df -Value Get-DotnetFormat -Force -Option AllScope
