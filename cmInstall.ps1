# The purpose of this section is to establish a connection with the install files
cmdkey /add:gcuifprdcusscrsta01.file.core.windows.net /user:AZURE\gcuifprdcusscrsta01 /pass:pHBJ9JFGjg6MKrvCjX2mtu4CLvBedDMdhko8YROtOxggiRpuY+NHdCg39ezVMYuiFgEM8V0lyQkKjh7ROOfJvg==
net use Z: \\gcuifprdcusscrsta01.file.core.windows.net\docstore
net use * \\gcuifprdcusscrsta01.file.core.windows.net\wgssetup

# The purpose of this section is to install the required IIS roles
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebServerRole
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebServer
Enable-WindowsOptionalFeature -Online -FeatureName IIS-CommonHttpFeatures
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpErrors
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpRedirect
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ApplicationDevelopment
Enable-WindowsOptionalFeature -Online -FeatureName NetFx4Extended-ASPNET45
Enable-WindowsOptionalFeature -Online -FeatureName IIS-NetFxExtensibility45
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HealthAndDiagnostics
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpLogging
Enable-WindowsOptionalFeature -Online -FeatureName IIS-LoggingLibraries
Enable-WindowsOptionalFeature -Online -FeatureName IIS-RequestMonitor
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpTracing
Enable-WindowsOptionalFeature -Online -FeatureName IIS-Security
Enable-WindowsOptionalFeature -Online -FeatureName IIS-RequestFiltering
Enable-WindowsOptionalFeature -Online -FeatureName IIS-Performance
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebServerManagementTools
Enable-WindowsOptionalFeature -Online -FeatureName IIS-IIS6ManagementCompatibility
Enable-WindowsOptionalFeature -Online -FeatureName IIS-Metabase
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ManagementConsole
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WindowsAuthentication
Enable-WindowsOptionalFeature -Online -FeatureName IIS-StaticContent
Enable-WindowsOptionalFeature -Online -FeatureName IIS-DefaultDocument
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ApplicationInit
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ISAPIExtensions
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ISAPIFilter
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpCompressionStatic
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ASPNET45

# install MS SQL ODBC Driver Version 17
write-host 'Version 17 MS SQL ODBC Driver Installer'
$appName = 'cm10'
$drive = 'C:\'
New-Item -Path $drive -Name $appName  -ItemType Directory -ErrorAction SilentlyContinue
$LocalPath = $drive + '\' + $appName 
set-Location $LocalPath
$visCplusURL = '\\gcuifprdcusscrsta01.file.core.windows.net\wgssetup\CM10\msodbcsqlv17(x64).msi'
$visCplusURLexe = 'msodbcsqlv17(x64).msi'
$outputPath = $LocalPath + '\' + $visCplusURLexe
Invoke-WebRequest -Uri $visCplusURL -OutFile $outputPath
Start-Process -FilePath $outputPath -Args "/I  /norestart /quiet /log mssqlodbcv17.log" -Wait
write-host 'Version 17 MS SQL ODBC Driver: Completed Install'

# install Visual C++ Restributable
write-host 'Visual C++ Redistributable Installer'
$appName = 'cm10'
$drive = 'C:\'
New-Item -Path $drive -Name $appName  -ItemType Directory -ErrorAction SilentlyContinue
$LocalPath = $drive + '\' + $appName 
set-Location $LocalPath
$visCplusURL = '\\gcuifprdcusscrsta01.file.core.windows.net\wgssetup\CM10\VC_redist.x64.exe'
$visCplusURLexe = 'VC_redist.x64.exe'
$outputPath = $LocalPath + '\' + $visCplusURLexe
Invoke-WebRequest -Uri $visCplusURL -OutFile $outputPath
Start-Process -FilePath $outputPath -Args "/I  /norestart /quiet /log vcdist.log" -Wait
write-host 'Visual C++ Redistributable: Completed Install'


# install Content Manager Server
write-host 'Content Manager Server Installer'
$appName = 'cm10'
$drive = 'C:\'
New-Item -Path $drive -Name $appName  -ItemType Directory -ErrorAction SilentlyContinue
$LocalPath = $drive + '\' + $appName 
set-Location $LocalPath
$cmserverURL = '\\gcuifprdcusscrsta01.file.core.windows.net\wgssetup\CM10\CM_Server_x64.msi'
$cmserverInstallerMsi = 'CM_Server_x64.msi'
$outputPath = $LocalPath + '\' + $cmserverInstallerMsi
Invoke-WebRequest -Uri $cmserverURL -OutFile $outputPath

# install Onstream Printer Files
write-host 'Onstream Printer Files Installer'
$appName = 'cm10'
$drive = 'C:\'
New-Item -Path $drive -Name $appName  -ItemType Directory -ErrorAction SilentlyContinue
$LocalPath = $drive + '\' + $appName 
set-Location $LocalPath
$onstreamURL = '\\gcuifprdcusscrsta01.file.core.windows.net\wgssetup\CM10\OnstreamPrinterFiles_x64.msi'
$onstreamInstallerMsi = 'OnstreamPrinterFiles_x64.msi'
$outputPath = $LocalPath + '\' + $onstreamInstallerMsi
Invoke-WebRequest -Uri $onstreamURL -OutFile $outputPath
Start-Process -FilePath msiexec.exe -Args "/I $outputPath /norestart /quiet /log onprinter.log" -Wait
write-host 'Onstream Printer FIles: Completed Install'

# install Content Manager Webclient
write-host 'Content Manager Webclient Installer'
$appName = 'cm10'
$drive = 'C:\'
New-Item -Path $drive -Name $appName  -ItemType Directory -ErrorAction SilentlyContinue
$LocalPath = $drive + '\' + $appName 
set-Location $LocalPath
$webclientURL = '\\gcuifprdcusscrsta01.file.core.windows.net\wgssetup\CM10\CM_WebClient_x64.msi'
$webclientInstallerMsi = 'CM_WebClient_x64.msi'
$outputPath = $LocalPath + '\' + $webclientInstallerMsi
Invoke-WebRequest -Uri $webclientURL -OutFile $outputPath
Start-Process -FilePath msiexec.exe -Args "/I $outputPath /norestart /quiet /log cmwebclient.log" -Wait
write-host 'Content Manager Webclient: Completed Install'

# install Content Manager Service API
write-host 'Content Manager Service API Installer'
$appName = 'cm10'
$drive = 'C:\'
New-Item -Path $drive -Name $appName  -ItemType Directory -ErrorAction SilentlyContinue
$LocalPath = $drive + '\' + $appName 
set-Location $LocalPath
$serviceapiURL = '\\gcuifprdcusscrsta01.file.core.windows.net\wgssetup\CM10\CM_Service_API_x64.msi'
$serviceapiInstallerMsi = 'CM_Service_API_x64.msi'
$outputPath = $LocalPath + '\' + $serviceapiInstallerMsi
Invoke-WebRequest -Uri $serviceapiURL -OutFile $outputPath
Start-Process -FilePath msiexec.exe -Args "/I $outputPath /norestart /quiet /log serviceapi.log SERV_API_INCLUDE_FILES='0'" -Wait
write-host 'Content Manager Service API: Completed Install'

# install Content Manager Client
write-host 'Content Manager Client Installer'
$appName = 'cm10'
$drive = 'C:\'
New-Item -Path $drive -Name $appName  -ItemType Directory -ErrorAction SilentlyContinue
$LocalPath = $drive + '\' + $appName 
set-Location $LocalPath
$cmclientURL = '\\gcuifprdcusscrsta01.file.core.windows.net\wgssetup\CM10\CM_Client_x64.msi'
$cmclientInstallerMsi = 'CM_Client_x64.msi'
$outputPath = $LocalPath + '\' + $cmclientInstallerMsi
Invoke-WebRequest -Uri $cmclientURL -OutFile $outputPath
Start-Process -FilePath msiexec.exe -Args "/I $outputPath /norestart /quiet /log cmclient.log" -Wait
write-host 'Content Manager Client: Completed Install'

# Download Cloudflare Public Cert
write-host 'Cloudflare Public Cert Downloader'
$appName = 'cm10'
$drive = 'C:\'
New-Item -Path $drive -Name $appName  -ItemType Directory -ErrorAction SilentlyContinue
$LocalPath = $drive + '\' + $appName 
set-Location $LocalPath
$cmpubliccerURL = '\\gcuifprdcusscrsta01.file.core.windows.net\wgssetup\CM10\appgateway.cer'
$cmpublicCert = 'appgateway.cer'
$outputPath = $LocalPath + '\' + $cmpublicCert
Invoke-WebRequest -Uri $cmpubliccerURL -OutFile $outputPath
write-host 'Cloudflare Public Cert: Completed Download'

# Download Cloudflare Private Cert
write-host 'Cloudflare Private Cert Downloader'
$appName = 'cm10'
$drive = 'C:\'
New-Item -Path $drive -Name $appName  -ItemType Directory -ErrorAction SilentlyContinue
$LocalPath = $drive + '\' + $appName 
set-Location $LocalPath
$cmprivatecerURL = '\\gcuifprdcusscrsta01.file.core.windows.net\wgssetup\CM10\appgateway.pfx'
$cmprivateCert = 'appgateway.pfx'
$outputPath = $LocalPath + '\' + $cmprivateCert
Invoke-WebRequest -Uri $cmprivatecerURL -OutFile $outputPath
write-host 'Cloudflare Private Cert: Completed Download'

regsvr32.exe "C:\Program Files\Micro Focus\Content Manager\trimsdk.dll" /s
Remove-Item -Path "C:\Users\Public\Desktop\Content Manager Desktop.lnk" -Force