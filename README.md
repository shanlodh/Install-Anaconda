# Install-Anaconda

- Download the .ps1 script
- cd to the folder where this script is downloaded and open the PowerShell ISE **as administrator**
- Run the following to set the session Execution-Policy `Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope process`
- type `help .\Install-Anaconda.ps1` to read the help file first
- Create a folder to install [Anaconda](https://www.anaconda.com/) 
- Run the shell script with 2 command line arguments: `downloadFile` and `targetFolder`
