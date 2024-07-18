$link = "https://github.com/AmizRm/Installer/releases/latest/download/VentordInstallerCli.exe"

$outfile = "$env:TEMP\VentordInstallerCli.exe"

Write-Output "Downloading installer to $outfile"

Invoke-WebRequest -Uri "$link" -OutFile "$outfile"

Write-Output ""

Start-Process -Wait -NoNewWindow -FilePath "$outfile"

# Cleanup
Remove-Item -Force "$outfile"
