#scoop install noevim
cls

#Load prompt configuration
oh-my-posh init pwsh --config C:\Users\galav\scoop\apps\oh-my-posh\8.22.1\themes\atomic.omp.json | Invoke-Expression 

# 
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
function Run-Elevated ($scriptblock){
    $sh = new-object -com 'Shell.Application'
    $sh.ShellExecute('powershell',"-NoExit -Command $sb",'','runas')
}
