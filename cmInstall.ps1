cmdkey /add:gcuifprdcusscrsta01.file.core.windows.net /user:AZURE\gcuifprdcusscrsta01 /pass:pHBJ9JFGjg6MKrvCjX2mtu4CLvBedDMdhko8YROtOxggiRpuY+NHdCg39ezVMYuiFgEM8V0lyQkKjh7ROOfJvg==

net use * \\gcuifprdcusscrsta01.file.core.windows.net\wgssetup

# install Visual C++ Restributable
write-host 'AIB Customization: Install the latest Microsoft Visual C++ Redistributable'
$appName = 'cm10'
$drive = 'C:\'
New-Item -Path $drive -Name $appName  -ItemType Directory -ErrorAction SilentlyContinue
$LocalPath = $drive + '\' + $appName 
set-Location $LocalPath
$visCplusURL = '\\gcuifprdcusscrsta01.file.core.windows.net\wgssetup\CM10\VC_redist.x64.exe'
$visCplusURLexe = 'VC_redist.x64.exe'
$outputPath = $LocalPath + '\' + $visCplusURLexe
Invoke-WebRequest -Uri $visCplusURL -OutFile $outputPath
write-host 'AIB Customization: Starting Install of the latest Microsoft Visual C++ Redistributable'
Start-Process -FilePath $outputPath -Args "/install /quiet /norestart /log vcdist.log" -Wait
write-host 'AIB Customization: Finished Install of the latest Microsoft Visual C++ Redistributable'


# install Content Manager Server
write-host 'Content Manager Server Installer'
$cmserverURL = '\\gcuifprdcusscrsta01.file.core.windows.net\wgssetup\CM10\CM_Server_x64.msi'
$cmserverInstallerMsi = 'CM_Server_x64.msi'
$outputPath = $LocalPath + '\' + $cmserverInstallerMsi
Invoke-WebRequest -Uri $cmserverURL -OutFile $outputPath
Start-Process -FilePath msiexec.exe -Args "/I $outputPath /quiet /norestart /log C:\install\cmserverinstall.log SERVERDATADIR=C:\install\MicroFocusContentManager" -Wait
write-host 'Content Manager Server: Completed Install'

# install Onstream Printer Files
write-host 'Onstream Printer Files Installer'
$onstreamURL = '\\gcuifprdcusscrsta01.file.core.windows.net\wgssetup\CM10\OnstreamPrinterFiles_x64.msi'
$onstreamInstallerMsi = 'OnstreamPrinterFiles_x64.msi'
$outputPath = $LocalPath + '\' + $onstreamInstallerMsi
Invoke-WebRequest -Uri $onstreamURL -OutFile $outputPath
Start-Process -FilePath msiexec.exe -Args "/I $outputPath /quiet /norestart /log C:\install\onstreaminstall.log" -Wait
write-host 'Onstream Printer FIles: Completed Install'

# install Content Manager Webclient
write-host 'Content Manager Webclient Installer'
$webclientURL = '\\gcuifprdcusscrsta01.file.core.windows.net\wgssetup\CM10\CM_WebClient_x64.msi'
$webclientInstallerMsi = 'CM_WebClient_x64.msi'
$outputPath = $LocalPath + '\' + $webclientInstallerMsi
Invoke-WebRequest -Uri $webclientURL -OutFile $outputPath
Start-Process -FilePath msiexec.exe -Args "/I $outputPath /quiet /norestart /log C:\install\webclientinstall.log" -Wait
write-host 'Content Manager Webclient: Completed Install'

# install Content Manager Service API
write-host 'Content Manager Service API Installer'
$serviceapiURL = '\\gcuifprdcusscrsta01.file.core.windows.net\wgssetup\CM10\CM_Service_API_x64.msi'
$serviceapiInstallerMsi = 'CM_Service_API_x64.msi'
$outputPath = $LocalPath + '\' + $serviceapiInstallerMsi
Invoke-WebRequest -Uri $serviceapiURL -OutFile $outputPath
Start-Process -FilePath msiexec.exe -Args "/I $outputPath /quiet /norestart /log C:\install\serviceapiinstall.log SERV_API_INCLUDE_FILES="0"" -Wait
write-host 'Content Manager Service API: Completed Install'

# install Content Manager Client
write-host 'Content Manager Client Installer'
$cmclientURL = '\\gcuifprdcusscrsta01.file.core.windows.net\wgssetup\CM10\CM_Client_x64.msi'
$cmclientInstallerMsi = 'CM_Client_x64.msi'
$outputPath = $LocalPath + '\' + $cmclientInstallerMsi
Invoke-WebRequest -Uri $cmclientURL -OutFile $outputPath
Start-Process -FilePath msiexec.exe -Args "/I $outputPath /quiet /norestart /log C:\install\cmclientinstall.txt" -Wait
write-host 'Content Manager Client: Completed Install'

regsvr32.exe "C:\Program Files\Micro Focus\Content Manager\trimsdk.dll" /s
Remove-Item -Path "C:\Users\Public\Desktop\Content Manager Desktop.lnk" -Force