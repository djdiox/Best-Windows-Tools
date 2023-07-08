# This batch file sets up a lot of useful tools.
ECHO OFF
# scoop
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser # Optional: Needed to run a remote script the first time
irm get.scoop.sh | iex

# chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# tools
winget install wingetui vscode nvm 1password chrome firefox discord steam VideoLAN.VLC git cmder rainmeter

JaxCoreSetup.bat
git clone https://github.com/Droptop-Four/Basic-Version.git
cd Basic-Version
"Droptop Basic Version.rmskin"
cd ..
wget https://rzr.to/synapse-3-pc-download -O synapse.exe