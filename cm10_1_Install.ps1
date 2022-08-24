# The purpose of this section is to establish a connection with the install files
cmdkey /add:cmgccprdcm101binaries.file.core.windows.net /user:AZURE\cmgccprdcm101binaries /pass:gUzljl3MMnlZaIbE5++7O4jbsaHro8muh3GpUbt+Xe35n450goRV+yP4pIw3EdczrOzmgr+pML66+AStPC0mHA==
net use Z: \\cmgccprdcm101binaries.file.core.windows.net\docstore
net use * \\cmgccprdcm101binaries.file.core.windows.net\cm101

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

# Download Content Manager Client
write-host 'Content Manager Client Installer'
$appName = 'cm10_1'
$drive = 'C:\'
New-Item -Path $drive -Name $appName  -ItemType Directory -ErrorAction SilentlyContinue
$LocalPath = $drive + '\' + $appName 
set-Location $LocalPath
$cmclientURL = '\\cmgccprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\64BitInstalls\CM_Client_x64.msi'
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
$cmcomcomURL = '\\cmgccprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\64BitInstalls\CM_COMComponents_x64.msi'
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
$cmIDOLURL = '\\firstnetprddocstore1.file.core.windows.net\cm101\AIB_Installers\64BitInstalls\CM_IDOLComponents_x64.msi'
$cmidolInstallerMsi = 'CM_IDOLComponents_x64.msi'
$outputPath = $LocalPath + '\' + $cmidolInstallerMsi
Invoke-WebRequest -Uri $cmIDOLURL -OutFile $outputPath

Start-Sleep -Seconds 180

# Download Content Manager Media Server
write-host 'Content Manager Media Server Installer'
$appName = 'cm10_1'
$drive = 'C:\'
New-Item -Path $drive -Name $appName  -ItemType Directory -ErrorAction SilentlyContinue
$LocalPath = $drive + '\' + $appName 
set-Location $LocalPath
$cmmediaURL = '\\firstnetprddocstore1.file.core.windows.net\cm101\AIB_Installers\64BitInstalls\CM_MediaServer_x64.msi'
$cmmediaInstallerMsi = 'CM_MediaServer_x64.msi'
$outputPath = $LocalPath + '\' + $cmmediaInstallerMsi
Invoke-WebRequest -Uri $cmmediaURL -OutFile $outputPath

Start-Sleep -Seconds 180

# Download Content Manager Server
write-host 'Content Manager Server Installer'
$appName = 'cm10_1'
$drive = 'C:\'
New-Item -Path $drive -Name $appName  -ItemType Directory -ErrorAction SilentlyContinue
$LocalPath = $drive + '\' + $appName 
set-Location $LocalPath
$cmserverURL = '\\cmgccprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\64BitInstalls\CM_Server_x64.msi'
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
$cmserviceapiURL = '\\cmgccprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\64BitInstalls\CM_Service_API_x64.msi'
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
$cmSPIURL = '\\firstnetprddocstore1.file.core.windows.net\cm101\AIB_Installers\64BitInstalls\CM_SharePointIntegration_x64.msi'
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
$cmwebclientURL = '\\cmgccprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\64BitInstalls\CM_WebClient_x64.msi'
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
$cmwebdrawerURL = '\\cmgccprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\64BitInstalls\CM_WebDrawer_x64.msi'
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
$sqlodbcURL = '\\cmgccprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\64BitInstalls\msodbcsqlv17(x64).msi'
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
$cmonstreamURL = '\\cmgccprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\64BitInstalls\OnstreamPrinterFiles_x64.msi'
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
$sharepointcomsURL = '\\cmgccprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\64BitInstalls\sharepointclientcomponents_16-6906-1200_x64-en-us.msi'
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
$vcrestURL = '\\cmgccprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\64BitInstalls\VC_redist.x64.exe'
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
$sqlcomsURL = '\\cmgccprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\64BitInstalls\x64SQLSysClrTypes.msi'
$sqlcomsInstallerMsi = 'x64SQLSysClrTypes.msi'
$outputPath = $LocalPath + '\' + $sqlcomsInstallerMsi
Invoke-WebRequest -Uri $sqlcomsURL -OutFile $outputPath

# Download Cloudflare Public Cert
write-host 'Cloudflare Public Cert Downloader'
$appName = 'cm10_1'
$drive = 'C:\'
New-Item -Path $drive -Name $appName  -ItemType Directory -ErrorAction SilentlyContinue
$LocalPath = $drive + '\' + $appName 
set-Location $LocalPath
$cmpubliccerURL = '\\cmgccprdcm101binaries.file.core.windows.net\cm101\AIB_Installers\appgateway.cer'
$cmpublicCert = 'appgateway.cer'
$outputPath = $LocalPath + '\' + $cmpublicCert
Invoke-WebRequest -Uri $cmpubliccerURL -OutFile $outputPath
write-host 'Cloudflare Public Cert: Completed Download'

# Download Content Manager Server API configs
write-host 'Content Manager Server API config Download'
$appName = 'cm10_1'
$drive = 'C:\'
New-Item -Path $drive -Name $appName  -ItemType Directory -ErrorAction SilentlyContinue
$LocalPath = $drive + '\' + $appName 
set-Location $LocalPath
$cmsvcAPIconfigURL = '\\firstnetprddocstore1.file.core.windows.net\cm101\AIB_Installers\hprmServiceAPI.config'
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
$cmidolconfigURL = '\\firstnetprddocstore1.file.core.windows.net\cm101\AIB_Installers\hptrim.config'
$cmidolconfig = 'hptrim.config'
$outputPath = $LocalPath + '\' + $cmidolconfig
Invoke-WebRequest -Uri $cmidolconfigURL -OutFile $outputPath