#This script is a configuration script for Packer to call on to download the files required for Ansible WinRM creation. Sysprep will run the ConfigureRemotingForAnsible script using the unattend.xml downloaded in this script.
          
$url = "https://raw.githubusercontent.com/jarora-hoopp/PublicRepo/master/Ansible/Windows/unattend.xml"
$file = "$env:SystemRoot\system32\sysprep\unattend.xml"

(New-Object -TypeName System.Net.WebClient).DownloadFile($url, $file)