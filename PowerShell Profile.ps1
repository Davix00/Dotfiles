# .--. .-.   .--..--.  .--. .---.--.--.   .---.
# |   |   )  |   )   ):    :|      |  |   |    
# |--' `-.   |--'|--' |    ||---   |  |   |--- 
# |   (   )  |   |  \ :    ;|      |  |   |    
# '    `-'   '   '   ` `--' '    --'--'---'---'                                              
cls
#Prompt configuration 
  #Oh-MY-POSh
#oh-my-posh init pwsh --config C:\Users\galav\scoop\apps\oh-my-posh\8.22.1\themes\takuya.omp.json | Invoke-Expression 
  #starship
$ENV:STARSHIP_CONFIG= "C:\Users\galav\Documentos\Documentos\Starship\starship.toml"
$ENV:STARSHIP_DISTRO = "DAVID "
Invoke-Expression (&starship init powershell)
# PsReadLine
Import-Module PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PsReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -PredictionSource History
#FzF
Import-Module PsFzf
Set-PsFzfOption -PsReadlineChordProvider 'Ctrl+f' -PsReadlineChordReverseHistory 'Ctrl+r'
#icons
Import-Module -Name Terminal-Icons
#Alias
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias buscar findstr
Set-Alias edge "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
#utilities
function which ($command){
    Get-Command -Name $command -ErrorAction SilentlyContinue |
	Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
function .. (){
   cd ../ 
}
function specs (){
    winfetch
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
