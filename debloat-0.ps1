param([switch]$Elevated)

function Test-Admin {
    $currentUser = New-Object Security.Principal.WindowsPrincipal $([Security.Principal.WindowsIdentity]::GetCurrent())
    $currentUser.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
}

if ((Test-Admin) -eq $false)  {
    if ($elevated) {
        # tried to elevate, did not work, aborting
    } else {
        Start-Process powershell.exe -Verb RunAs -ArgumentList ('-noprofile -noexit -file "{0}" -elevated' -f ($myinvocation.MyCommand.Definition))
    }
    exit
}

'running with full privileges'
 Get-AppxPackage -allusers *Microsoft.549981C3F5F10* | Remove-AppxPackage
 Get-AppxPackage -allusers *king.com.CandyCrushSaga* | Remove-AppxPackage 
 Get-AppxPackage -allusers *Microsoft.ZuneVideo* | Remove-AppxPackage
 Get-AppxPackage -allusers *solitairecollection* | Remove-AppxPackage
 Get-AppxPackage -allusers *Microsoft.ZuneMusic* | Remove-AppxPackage
 Get-AppxPackage -allusers *Microsoft.Music.Preview* | Remove-AppxPackage
 Get-AppxPackage -allusers *Microsoft.XboxGameCallableUI* | Remove-AppxPackage
 Get-AppxPackage -allusers *Microsoft.XboxIdentityProvider* | Remove-AppxPackage
 Get-AppxPackage -allusers *Microsoft.BingTravel* | Remove-AppxPackage
 Get-AppxPackage -allusers *Microsoft.BingHealthAndFitness* | Remove-AppxPackage
 Get-AppxPackage -allusers *Microsoft.BingFoodAndDrink* | Remove-AppxPackage
 Get-AppxPackage -allusers *Microsoft.People* | Remove-AppxPackage
 Get-AppxPackage -allusers *Microsoft.BingFinance* | Remove-AppxPackage
 Get-AppxPackage -allusers *Microsoft.3DBuilder* | Remove-AppxPackage
 Get-AppxPackage -allusers *Microsoft.WindowsCalculator* | Remove-AppxPackage
 Get-AppxPackage -allusers *Microsoft.BingNews* | Remove-AppxPackage
 Get-AppxPackage -allusers *Microsoft.XboxApp* | Remove-AppxPackage
 Get-AppxPackage *Microsoft.YourPhone* -AllUsers | Remove-AppxPackage
 Get-AppxPackage -allusers *Microsoft.soundrecorder* | Remove-AppxPackage
 Get-AppxPackage -allusers *Microsoft.Xbox* | Remove-AppxPackage
 Get-AppxPackage -allusers *Microsoft.BingSports* | Remove-AppxPackage
 Get-AppxPackage -allusers *Microsoft.WindowsCamera* | Remove-AppxPackage
 Get-AppxPackage -allusers *Microsoft.Getstarted* | Remove-AppxPackage
 Get-AppxPackage -allusers *Microsoft.Office.OneNote* | Remove-AppxPackage
 Get-AppxPackage -allusers *Microsoft.WindowsMaps* | Remove-AppxPackage
 Get-AppxPackage -allusers *Microsoft.MicrosoftSolitaireCollection* | Remove-AppxPackage
 Get-AppxPackage -allusers *Microsoft.MicrosoftOfficeHub* | Remove-AppxPackage
 Get-AppxPackage -allusers *Microsoft.BingWeather* | Remove-AppxPackage
 #Get-AppxPackage -allusers *Microsoft.BioEnrollment* | Remove-AppxPackage
 Get-AppxPackage -allusers *soundrecorder* | Remove-AppxPackage
 Get-AppxPackage -allusers *Microsoft.Microsoft3DViewer* | Remove-AppxPackage
 get-appxpackage -allusers *Microsoft.WindowsAlarms* | remove-appxpackage 
 Get-AppxPackage -allusers *Microsoft.WindowsFeedbackHub* | Remove-AppxPackage
 Get-AppxPackage -allUsers *Microsoft.GetHelp* | Remove-AppxPackage
 Get-AppxPackage -allusers *Microsoft.SkypeApp* | Remove-AppxPackage
 Get-AppxPackage -allusers *Microsoft.MixedReality.Porta*l | Remove-AppxPackage
 Get-AppxPackage -allusers *Microsoft.windowscommunicationsapps* | Remove-AppxPackage
 Get-AppxPackage *Microsoft.YourPhone* -AllUsers | Remove-AppxPackage
 Get-AppxPackage -AllUsers *ROBLOXCORPORATION.ROBLOX* | Remove-AppxPackage
 Get-AppxPackage -AllUsers *Spotify* | Remove-AppxPackage
 Get-AppxPackage -AllUsers *CandyCrush* | Remove-AppxPackage
 Get-AppxPackage -AllUsers *tiktok* | Remove-AppxPackage
 #Get-AppxPackage -allusers  *Microsoft.WindowsStore* | Remove-AppxPackage
 #Get-AppxPackage -allusers  *Microsoft.Windows.Photos* | Remove-AppxPackage
 Get-AppxPackage Microsoft.MSPaint | Remove-AppxPackage
 Get-AppxPackage *Microsoft.WindowsPhone* | Remove-AppxPackage
 cd "C:\Program Files (x86)\Microsoft\Edge\Application\9*\Installer"
 .\setup.exe -uninstall -system-level -verbose-logging -force-uninstall
 cls
 Write-Host "Downloading other web browsers (check your desktop folder)"
 Invoke-WebRequest -Uri http://ftp.mozilla.org/pub/firefox/releases/90.0b9/win64/en-US/Firefox%20Setup%2090.0b9.msi -OutFile $HOME\Desktop\Firefox.msi
 Invoke-WebRequest -Uri https://dl.google.com/tag/s/appguid%3D%7B8A69D345-D564-463C-AFF1-A69D9E530F96%7D%26iid%3D%7B73068633-B788-DC85-DC4F-30CFB7FC08D4%7D%26lang%3Den%26browser%3D5%26usagestats%3D1%26appname%3DGoogle%2520Chrome%26needsadmin%3Dprefers%26ap%3Dx64-stable-statsdef_1%26installdataindex%3Dempty/update2/installers/ChromeSetup.exe -OutFile $HOME\Desktop\Chrome.exe
 Invoke-WebRequest -Uri https://laptop-updates.brave.com/latest/winx64 -OutFile $HOME\Desktop\Brave.exe
 Write-Host "Congratulations! You system has been debloated! microsoft edge is uninstalled other browers installers and downloaded in your desktop"
