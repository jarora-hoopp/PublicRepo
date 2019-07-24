#This script is a configuration script for Packer to call on to download the files required for Ansible WinRM creation. Sysprep will run the ConfigureRemotingForAnsible script using the unattend.xml downloaded in this script.

$url = "https://raw.githubusercontent.com/ansible/ansible/devel/examples/scripts/ConfigureRemotingForAnsible.ps1"
$file = "$env:temp\ConfigureRemotingForAnsible.ps1"
          
#$url2 = "https://raw.githubusercontent.com/jarora-hoopp/PublicRepo/master/Ansible/Windows/unattend.xml"
#$file2 = "$env:temp\unattend.xml"

(New-Object -TypeName System.Net.WebClient).DownloadFile($url, $file)
#(New-Object -TypeName System.Net.WebClient).DownloadFile($url2, $file2)

powershell.exe -ExecutionPolicy ByPass -File $file -ForceNewSSLCert
#winrm enumerate winrm/config/Listener

