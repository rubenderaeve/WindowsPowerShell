
iex "$(thefuck --alias)"

# tea
function Get-TeaPr {
  $Title = git show -s --format=%s
  & tea pulls create --base develop --title $Title $args }
New-Alias -Name tp -Value Get-TeaPr -Force -Option AllScope

#duckduckgo
function Get-SearchDuckDuckGo { & start https://duckduckgo.com/?q=$args }
New-Alias -Name dd -Value Get-SearchDuckDuckGo -Force -Option AllScope

# 7 zip
function Get-ExtractHere { & 7z x -o* $args }
New-Alias -Name x -Value Get-ExtractHere -Force -Option AllScope

# nvim
function Get-NvimInstance { & C:\tls\startup\anvim.bat }
New-Alias -Name nv -Value Get-NvimInstance -Force -Option AllScope
