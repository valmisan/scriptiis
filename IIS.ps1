<powershell>
#baixar função de arquivo
função Baixar arquivo
{
 parâmetro (
 [string]$url,
 [string]$salvarAs
 )

Write-Host "Baixando $url para $saveAs"
 $downloader = novo objeto System.Net.WebClient
 $downloader.DownloadFile($url, $saveAs)
}

#download Ferramenta de administração de servidor remoto do Windows (permite o módulo Gerenciador de servidores)
$SaveAsFileName = "C:\temp\WindowsTH-RSAT_WS2016-x64.msu"
$File1DownloadPath = "https://download.microsoft.com/download/1/D/8/1D8B5022-5477-4B9A-8104-6A71FF9D98AB/WindowsTH-RSAT_WS2016-x64.msu"
Arquivo de download $File1DownloadPath $SaveAsFileName
#instala o RSAT
msiexec /i C:\temp\WindowsTH-RSAT_WS2016-x64.msu
#instala o IIS
Enable-WindowsOptionalFeature –online –featurename IIS-WebServerRole
# verifica se está rodando
Obtenha serviço W3SVC
</powershell>