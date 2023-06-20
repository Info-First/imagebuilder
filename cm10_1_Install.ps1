# The purpose of this section is to establish a connection with the install files
cmdkey /add:iffedprdcm101binaries.file.core.windows.net /user:AZURE\iffedprdcm101binaries /pass:jnv/8wy2NNCjgNhxHwmw5/9vCU8NLYb0HW84wr75Hb7fVLOD0mwwEmYgKzUnK4iwP9/RTeThfiVw+AStXhS3kA==
net use Z: \\iffedprdcm101binaries.file.core.windows.net\docstore
net use * \\iffedprdcm101binaries.file.core.windows.net\cm101

# Download Content Manager Client
write-host 'Content Manager Client Installer'
$appName = 'cm10_1'
$drive = 'C:\'
New-Item -Path $drive -Name $appName  -ItemType Directory -ErrorAction SilentlyContinue
$LocalPath = $drive + '\' + $appName 
set-Location $LocalPath
$cmclientURL = '\\iffedprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\64BitInstalls\CM_Client_x64.msi'
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
$cmcomcomURL = '\\iffedprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\64BitInstalls\CM_COMComponents_x64.msi'
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
$cmIDOLURL = '\\iffedprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\64BitInstalls\CM_IDOLComponents_x64.msi'
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
$cmmediaURL = '\\iffedprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\64BitInstalls\CM_MediaServer_x64.msi'
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
$cmserverURL = '\\iffedprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\64BitInstalls\CM_Server_x64.msi'
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
$cmserviceapiURL = '\\iffedprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\64BitInstalls\CM_Service_API_x64.msi'
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
$cmSPIURL = '\\iffedprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\64BitInstalls\CM_SharePointIntegration_x64.msi'
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
$cmwebclientURL = '\\iffedprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\64BitInstalls\CM_WebClient_x64.msi'
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
$cmwebdrawerURL = '\\iffedprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\64BitInstalls\CM_WebDrawer_x64.msi'
$cmwebdrawerInstallerMsi = 'CM_WebDrawer_x64.msi'
$outputPath = $LocalPath + '\' + $cmwebdrawerInstallerMsi
Invoke-WebRequest -Uri $cmwebdrawerURL -OutFile $outputPath

# Download MS SQL ODBC Driver Version 17
write-host 'Content Manager MS SQL ODBC Driver Version 17 Installer'
$appName = 'cm10_1'
$drive = 'C:\'
New-Item -Path $drive -Name $appName  -ItemType Directory -ErrorAction SilentlyContinue
$LocalPath = $drive + '\' + $appName 
set-Location $LocalPath
$sqlodbcURL = '\\iffedprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\64BitInstalls\msodbcsqlv17(x64).msi'
$sqlodbcInstallerMsi = 'msodbcsqlv17(x64).msi'
$outputPath = $LocalPath + '\' + $sqlodbcInstallerMsi
Invoke-WebRequest -Uri $sqlodbcURL -OutFile $outputPath

# Download Content Manager Onstream Print Drivers
write-host 'Content Manager Onstream Print Drivers Installer'
$appName = 'cm10_1'
$drive = 'C:\'
New-Item -Path $drive -Name $appName  -ItemType Directory -ErrorAction SilentlyContinue
$LocalPath = $drive + '\' + $appName 
set-Location $LocalPath
$cmonstreamURL = '\\iffedprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\64BitInstalls\OnstreamPrinterFiles_x64.msi'
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
$sharepointcomsURL = '\\iffedprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\64BitInstalls\sharepointclientcomponents_16-6906-1200_x64-en-us.msi'
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
$vcrestURL = '\\iffedprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\64BitInstalls\VC_redist.x64.exe'
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
$sqlcomsURL = '\\iffedprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\64BitInstalls\x64SQLSysClrTypes.msi'
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
$cmsvcAPIconfigURL = '\\iffedprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\hprmServiceAPI.config'
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
$cmidolconfigURL = '\\iffedprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\hptrim.config'
$cmidolconfig = 'hptrim.config'
$outputPath = $LocalPath + '\' + $cmidolconfig
Invoke-WebRequest -Uri $cmidolconfigURL -OutFile $outputPath