# visual studio installation
Write-BoxstarterMessage "Installing visual studio community edition."
cinst visualstudio2017community --package-parameters "--allWorkloads --includeRecommended --includeOptional --passive --locale en-US"
# Workload IDs: https://docs.microsoft.com/en-us/visualstudio/install/workload-component-id-vs-community?view=vs-2017
# --allWorkloads
# --add Microsoft.VisualStudio.Workload.CoreEditor 
# --add Microsoft.VisualStudio.Workload.NetCrossPlat 
# --add Microsoft.VisualStudio.Workload.NetCoreTools 
# --add Microsoft.VisualStudio.Workload.NetWeb  
# --add Microsoft.VisualStudio.Workload.ManagedDesktop

#cinst visualstudio2017community
#cinst visualstudio2017-workload-netcoretools
#cinst visualstudio2017-workload-netcorebuildtools
#cinst visualstudio2017-workload-xamarinbuildtools
#cinst visualstudio2017-workload-netweb
#cinst visualstudio2017-workload-webcrossplat
#cinst visualstudio2017-workload-manageddesktop
#cinst visualstudio2017-workload-manageddesktopbuildtools
#cinst visualstudio2017-workload-azure
#cinst visualstudio2017-workload-azurebuildtools
#cinst visualstudio2017-workload-node
#cinst visualstudio2017-workload-nodebuildtools
#cinst visualstudio2017-workload-universal
#cinst visualstudio2017-workload-universalbuildtools
#cinst visualstudio2017-workload-office
#cinst visualstudio2017-workload-officebuildtools


if (Test-PendingReboot) { Invoke-Reboot }
refreshenv

# VSIXInstaller /quiet
Write-BoxstarterMessage "Installing visual studio extentions"
cinst resharper
cinst dotcover
cinst dotpeek
#cinst ncrunch-vs2017
#cinst teamcity

#cinst stylecop


function Get-Batchfile ($file) {
  $cmd = "`"$file`" & set"
    cmd /c $cmd | Foreach-Object {
      $p, $v = $_.split('=')
        Set-Item -path env:$p -value $v
    }
}

function VsVars32()
{
    $BatchFile = join-path $env:VS120COMNTOOLS "vsvars32.bat"
    Get-Batchfile `"$BatchFile`"
}

function curlex($url, $filename) {
  $path = [io.path]::gettemppath() + "\" + $filename
  if( test-path $path ) { rm -force $path }
  (new-object net.webclient).DownloadFile($url, $path)

  return new-object io.fileinfo $path
}

function installsilently($url, $name) {
  echo "Installing $name"
  $extension = (curlex $url $name).FullName
  $result = Start-Process -FilePath "VSIXInstaller.exe" -ArgumentList "/q $extension" -Wait -PassThru;
}


installsilentlyhttps://marketplace.visualstudio.com/items?itemName=BrianLagunas.PrismTemplatePack
installsilently https://marketplace.visualstudio.com/items?itemName=PostSharpTechnologies.PostSharp


