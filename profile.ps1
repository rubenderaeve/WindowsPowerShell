
#region conda initialize
# !! Contents within this block are managed by 'conda init' !!
If (Test-Path "C:\Users\DRUBE\scoop\apps\miniconda3\current\Scripts\conda.exe") {
    (& "C:\Users\DRUBE\scoop\apps\miniconda3\current\Scripts\conda.exe" "shell.powershell" "hook") | Out-String | ?{$_} | Invoke-Expression
}
#endregion

