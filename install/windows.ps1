# Installe Nuvio (version famille) sur Windows. Dans PowerShell :
#   irm https://raw.githubusercontent.com/jozrcr/familystream-releases/main/install/windows.ps1 | iex
$ErrorActionPreference = 'Stop'
# Sans la barre de progression, Invoke-WebRequest télécharge bien plus vite.
$ProgressPreference = 'SilentlyContinue'

$url = 'https://github.com/jozrcr/familystream-releases/releases/latest/download/familystream-pc-windows-x64.msi'
$msi = Join-Path $env:TEMP 'familystream-pc-windows-x64.msi'

Write-Host 'Téléchargement de Nuvio (environ 180 Mo)…'
Invoke-WebRequest -Uri $url -OutFile $msi -UseBasicParsing
Write-Host "Installation : Windows demande l'autorisation, répondez Oui."
$install = Start-Process msiexec.exe -ArgumentList '/i', "`"$msi`"", '/passive' -Wait -PassThru
Remove-Item $msi -ErrorAction SilentlyContinue

if ($install.ExitCode -eq 0) {
    Write-Host "C'est installé ! Nuvio est sur le bureau et dans le menu Démarrer."
} else {
    Write-Host "L'installation n'a pas abouti (code $($install.ExitCode)). Réessayez, ou installez à la main depuis la page de téléchargement."
}
