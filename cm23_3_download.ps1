# The purpose of this section is to establish a connection with the install files
cmdkey /add:ifcomprdcm101binaries.file.core.windows.net /user:AZURE\ifcomprdcm101binaries /pass:###REPLACE WITH CURRENT KEY
net use Z: \\ifcomprdcm101binaries.file.core.windows.net\docstore
net use * \\ifcomprdcm101binaries.file.core.windows.net\cm23_3
##All Code from this point below should be packaged into a single zip and decompressed on image in the C:\cmversion folder
# Download Content Manager Client
write-host 'Content Manager Client Installer'
$appName = 'cm10_1'
$drive = 'C:\'
New-Item -Path $drive -Name $appName  -ItemType Directory -ErrorAction SilentlyContinue
$LocalPath = $drive + '\' + $appName 
set-Location $LocalPath
$cmclientURL = '\\ifcomprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\64BitInstalls\CM_Client_x64.msi'
$cmclientInstallerMsi = 'CM_Client_x64.msi'
$outputPath = $LocalPath + '\' + $cmclientInstallerMsi
Invoke-WebRequest -Uri $cmclientURL -OutFile $outputPath

# Download Content Manager COM Components
write-host 'Content Manager COM Components Installer'
$appName = 'cm10_1'
$drive = 'C:\'
New-Item -Path $drive -Name $appName  -ItemType Directory -ErrorAction SilentlyContinue
$LocalPath = $drive + '\' + $appName 
set-Location $LocalPath
$cmcomcomURL = '\\ifcomprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\64BitInstalls\CM_COMComponents_x64.msi'
$cmcomcomInstallerMsi = 'CM_COMComponents_x64.msi'
$outputPath = $LocalPath + '\' + $cmcomcomInstallerMsi
Invoke-WebRequest -Uri $cmcomcomURL -OutFile $outputPath

# Download Content Manager IDOL Components
write-host 'Content Manager IDOL Components Installer'
$appName = 'cm10_1'
$drive = 'C:\'
New-Item -Path $drive -Name $appName  -ItemType Directory -ErrorAction SilentlyContinue
$LocalPath = $drive + '\' + $appName 
set-Location $LocalPath
$cmIDOLURL = '\\ifcomprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\64BitInstalls\CM_IDOLComponents_x64.msi'
$cmidolInstallerMsi = 'CM_IDOLComponents_x64.msi'
$outputPath = $LocalPath + '\' + $cmidolInstallerMsi
Invoke-WebRequest -Uri $cmIDOLURL -OutFile $outputPath

# Download Content Manager Media Server
write-host 'Content Manager Media Server Installer'
$appName = 'cm10_1'
$drive = 'C:\'
New-Item -Path $drive -Name $appName  -ItemType Directory -ErrorAction SilentlyContinue
$LocalPath = $drive + '\' + $appName 
set-Location $LocalPath
$cmmediaURL = '\\ifcomprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\64BitInstalls\CM_MediaServer_x64.msi'
$cmmediaInstallerMsi = 'CM_MediaServer_x64.msi'
$outputPath = $LocalPath + '\' + $cmmediaInstallerMsi
Invoke-WebRequest -Uri $cmmediaURL -OutFile $outputPath

# Download Content Manager Server
write-host 'Content Manager Server Installer'
$appName = 'cm10_1'
$drive = 'C:\'
New-Item -Path $drive -Name $appName  -ItemType Directory -ErrorAction SilentlyContinue
$LocalPath = $drive + '\' + $appName 
set-Location $LocalPath
$cmserverURL = '\\ifcomprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\64BitInstalls\CM_Server_x64.msi'
$cmserverInstallerMsi = 'CM_Server_x64.msi'
$outputPath = $LocalPath + '\' + $cmserverInstallerMsi
Invoke-WebRequest -Uri $cmserverURL -OutFile $outputPath

# Download Content Manager Service API
write-host 'Content Manager Service API Installer'
$appName = 'cm10_1'
$drive = 'C:\'
New-Item -Path $drive -Name $appName  -ItemType Directory -ErrorAction SilentlyContinue
$LocalPath = $drive + '\' + $appName 
set-Location $LocalPath
$cmserviceapiURL = '\\ifcomprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\64BitInstalls\CM_Service_API_x64.msi'
$cmserviceapiInstallerMsi = 'CM_Service_API_x64.msi'
$outputPath = $LocalPath + '\' + $cmserviceapiInstallerMsi
Invoke-WebRequest -Uri $cmserviceapiURL -OutFile $outputPath

# Download Content Manager SharePoint Integration
write-host 'Content Manager SharePoint Intgration Installer'
$appName = 'cm10_1'
$drive = 'C:\'
New-Item -Path $drive -Name $appName  -ItemType Directory -ErrorAction SilentlyContinue
$LocalPath = $drive + '\' + $appName 
set-Location $LocalPath
$cmSPIURL = '\\ifcomprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\64BitInstalls\CM_SharePointIntegration_x64.msi'
$cmSPIInstallerMsi = 'CM_SharePointIntegration_x64.msi'
$outputPath = $LocalPath + '\' + $cmSPIInstallerMsi
Invoke-WebRequest -Uri $cmSPIURL -OutFile $outputPath

# Download Content Manager Webclient
write-host 'Content Manager Webclient Installer'
$appName = 'cm10_1'
$drive = 'C:\'
New-Item -Path $drive -Name $appName  -ItemType Directory -ErrorAction SilentlyContinue
$LocalPath = $drive + '\' + $appName 
set-Location $LocalPath
$cmwebclientURL = '\\ifcomprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\64BitInstalls\CM_WebClient_x64.msi'
$cmwebclientInstallerMsi = 'CM_WebClient_x64.msi'
$outputPath = $LocalPath + '\' + $cmwebclientInstallerMsi
Invoke-WebRequest -Uri $cmwebclientURL -OutFile $outputPath

# Download Content Manager WebDrawer
write-host 'Content Manager WebDrawer Installer'
$appName = 'cm10_1'
$drive = 'C:\'
New-Item -Path $drive -Name $appName  -ItemType Directory -ErrorAction SilentlyContinue
$LocalPath = $drive + '\' + $appName 
set-Location $LocalPath
$cmwebdrawerURL = '\\ifcomprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\64BitInstalls\CM_WebDrawer_x64.msi'
$cmwebdrawerInstallerMsi = 'CM_WebDrawer_x64.msi'
$outputPath = $LocalPath + '\' + $cmwebdrawerInstallerMsi
Invoke-WebRequest -Uri $cmwebdrawerURL -OutFile $outputPath

# Download MS SQL ODBC Driver Version 18
write-host 'Content Manager MS SQL ODBC Driver Version 18 Installer'
$appName = 'cm10_1'
$drive = 'C:\'
New-Item -Path $drive -Name $appName  -ItemType Directory -ErrorAction SilentlyContinue
$LocalPath = $drive + '\' + $appName 
set-Location $LocalPath
$sqlodbcURL = '\\ifcomprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\64BitInstalls\UPDATE ME.msi'
$sqlodbcInstallerMsi = 'UPDATE ME.msi'
$outputPath = $LocalPath + '\' + $sqlodbcInstallerMsi
Invoke-WebRequest -Uri $sqlodbcURL -OutFile $outputPath

# Download Content Manager Onstream Print Drivers
write-host 'Content Manager Onstream Print Drivers Installer'
$appName = 'cm10_1'
$drive = 'C:\'
New-Item -Path $drive -Name $appName  -ItemType Directory -ErrorAction SilentlyContinue
$LocalPath = $drive + '\' + $appName 
set-Location $LocalPath
$cmonstreamURL = '\\ifcomprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\64BitInstalls\OnstreamPrinterFiles_x64.msi'
$cmonstreamInstallerMsi = 'OnstreamPrinterFiles_x64.msi'
$outputPath = $LocalPath + '\' + $cmonstreamInstallerMsi
Invoke-WebRequest -Uri $cmonstreamURL -OutFile $outputPath

# Download SharePoint Client Components
write-host 'SharePoint Client Installer'
$appName = 'cm10_1'
$drive = 'C:\'
New-Item -Path $drive -Name $appName  -ItemType Directory -ErrorAction SilentlyContinue
$LocalPath = $drive + '\' + $appName 
set-Location $LocalPath
$sharepointcomsURL = '\\ifcomprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\64BitInstalls\sharepointclientcomponents_16-6906-1200_x64-en-us.msi'
$sharepointcomsInstallerMsi = 'sharepointclientcomponents_16-6906-1200_x64-en-us.msi'
$outputPath = $LocalPath + '\' + $sharepointcomsInstallerMsi
Invoke-WebRequest -Uri $sharepointcomsURL -OutFile $outputPath

# Download Visual C++ Restributable
write-host 'Visual C++ Restributable Installer'
$appName = 'cm10_1'
$drive = 'C:\'
New-Item -Path $drive -Name $appName  -ItemType Directory -ErrorAction SilentlyContinue
$LocalPath = $drive + '\' + $appName 
set-Location $LocalPath
$vcrestURL = '\\ifcomprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\64BitInstalls\VC_redist.x64.exe'
$vcrestInstallerMsi = 'VC_redist.x64.exe'
$outputPath = $LocalPath + '\' + $vcrestInstallerMsi
Invoke-WebRequest -Uri $vcrestURL -OutFile $outputPath

# Download SQL Server Components
write-host 'SQL Server Components Installer'
$appName = 'cm10_1'
$drive = 'C:\'
New-Item -Path $drive -Name $appName  -ItemType Directory -ErrorAction SilentlyContinue
$LocalPath = $drive + '\' + $appName 
set-Location $LocalPath
$sqlcomsURL = '\\ifcomprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\64BitInstalls\x64SQLSysClrTypes.msi'
$sqlcomsInstallerMsi = 'x64SQLSysClrTypes.msi'
$outputPath = $LocalPath + '\' + $sqlcomsInstallerMsi
Invoke-WebRequest -Uri $sqlcomsURL -OutFile $outputPath

# Download Content Manager Server API configs
write-host 'Content Manager Server API config Download'
$appName = 'cm10_1'
$drive = 'C:\'
New-Item -Path $drive -Name $appName  -ItemType Directory -ErrorAction SilentlyContinue
$LocalPath = $drive + '\' + $appName 
set-Location $LocalPath
$cmsvcAPIconfigURL = '\\ifcomprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\hprmServiceAPI.config'
$cmsvcAPIconfig = 'hprmServiceAPI.config'
$outputPath = $LocalPath + '\' + $cmsvcAPIconfig
Invoke-WebRequest -Uri $cmsvcAPIconfigURL -OutFile $outputPath
   
# Download Content Manager IDOL configs
write-host 'Content Manager Server IDOL config Download'
$appName = 'cm10_1'
$drive = 'C:\'
New-Item -Path $drive -Name $appName  -ItemType Directory -ErrorAction SilentlyContinue
$LocalPath = $drive + '\' + $appName 
set-Location $LocalPath
$cmidolconfigURL = '\\ifcomprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\hptrim.config'
$cmidolconfig = 'hptrim.config'
$outputPath = $LocalPath + '\' + $cmidolconfig
Invoke-WebRequest -Uri $cmidolconfigURL -OutFile $outputPath