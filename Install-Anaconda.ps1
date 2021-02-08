<# 
.SYNOPSIS
Install-Anaconda installs Python and the Anaconda data and analytics environment 
.DESCRIPTION
Install-Anaconda first invokes a web-request to install the Anaconda executable in a download folder. It then installs the executable silently in a target folder and registers and adds python to the PATH 
.PARAMETER downloadFile
Full path and filename, including .exe extension, to save the executable, e.g. C:\Users\User.Name\Downloads\anaconda.exe"
Please replace User.Name in above as appropriate
.PARAMETER targetFolder
Full target path where the extracted executable will be saved 
#>
param (
[Parameter(Mandatory=$true)][string]$downloadFile, 
[Parameter(Mandatory=$true)][string]$targetFolder
)
$uri = "https://repo.anaconda.com/archive/Anaconda3-2020.11-Windows-x86_64.exe"
Invoke-WebRequest -Uri $uri -downloadFile $downloadFile
Start-Process -FilePath $downloadFile -Wait -PassThru -ArgumentList '/S', '/v', '/qn', 'InstallationType=AllUsers', `
'/AddToPath=1', '/RegisterPython=1', '/D=$targetFolder'