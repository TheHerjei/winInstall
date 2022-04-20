Get-AppxProvisionedPackage -Online | Where-Object {$_.packagename -like "Microsoft.BingNews*"} | Remove-AppXProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.packagename -like "Microsoft.BingWeather*"} | Remove-AppXProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.packagename -like "Microsoft.GamingApp*"} | Remove-AppXProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.packagename -like "Microsoft.GetHelp*"} | Remove-AppXProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.packagename -like "Microsoft.HEIFImageExtension*"} | Remove-AppXProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.packagename -like "Microsoft.MicrosoftOfficeHub*"} | Remove-AppXProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.packagename -like "Microsoft.MicrosoftSolitaireCollection*"} | Remove-AppXProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.packagename -like "Microsoft.MicrosoftStickyNotes*"} | Remove-AppXProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.packagename -like "Microsoft.People*"} | Remove-AppXProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.packagename -like "Microsoft.Todos*"} | Remove-AppXProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.packagename -like "Microsoft.VP9VideoExtensions*"} | Remove-AppXProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.packagename -like "Microsoft.WebMediaExtensions*"} | Remove-AppXProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.packagename -like "Microsoft.WebpImageExtension*"} | Remove-AppXProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.packagename -like "Microsoft.Windows.Photos*"} | Remove-AppXProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.packagename -like "Microsoft.WindowsAlarms*"} | Remove-AppXProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.packagename -like "microsoft.windowscommunicationsapps*"} | Remove-AppXProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.packagename -like "Microsoft.WindowsFeedbackHub*"} | Remove-AppXProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.packagename -like "Microsoft.WindowsMaps*"} | Remove-AppXProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.packagename -like "Microsoft.Xbox.TCUI*"} | Remove-AppXProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.packagename -like "Microsoft.XboxGameOverlay*"} | Remove-AppXProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.packagename -like "Microsoft.XboxGamingOverlay*"} | Remove-AppXProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.packagename -like "Microsoft.XboxIdentityProvider*"} | Remove-AppXProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.packagename -like "Microsoft.XboxSpeechToTextOverlay*"} | Remove-AppXProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.packagename -like "Microsoft.YourPhone*"} | Remove-AppXProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.packagename -like "Microsoft.ZuneMusic*"} | Remove-AppXProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.packagename -like "Microsoft.ZuneVideo*"} | Remove-AppXProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.packagename -like "MicrosoftTeams*"} | Remove-AppXProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.packagename -like "MicrosoftWindows.Client.WebExperience*"} | Remove-AppXProvisionedPackage -Online

Get-AppxPackage -AllUsers | Where-Object {$_.packagefamilyname -like "Microsoft.BingNews*"} | Remove-AppXPackage -AllUsers
Get-AppxPackage -AllUsers | Where-Object {$_.packagefamilyname -like "Microsoft.BingWeather*"} | Remove-AppXPackage -AllUsers
Get-AppxPackage -AllUsers | Where-Object {$_.packagefamilyname -like "Microsoft.GamingApp*"} | Remove-AppXPackage -AllUsers
Get-AppxPackage -AllUsers | Where-Object {$_.packagefamilyname -like "Microsoft.GetHelp*"} | Remove-AppXPackage -AllUsers
Get-AppxPackage -AllUsers | Where-Object {$_.packagefamilyname -like "Microsoft.HEIFImageExtension*"} | Remove-AppXPackage -AllUsers
Get-AppxPackage -AllUsers | Where-Object {$_.packagefamilyname -like "Microsoft.MicrosoftOfficeHub*"} | Remove-AppXPackage -AllUsers
Get-AppxPackage -AllUsers | Where-Object {$_.packagefamilyname -like "Microsoft.MicrosoftSolitaireCollection*"} | Remove-AppXPackage -AllUsers
Get-AppxPackage -AllUsers | Where-Object {$_.packagefamilyname -like "Microsoft.MicrosoftStickyNotes*"} | Remove-AppXPackage -AllUsers
Get-AppxPackage -AllUsers | Where-Object {$_.packagefamilyname -like "Microsoft.People*"} | Remove-AppXPackage -AllUsers
Get-AppxPackage -AllUsers | Where-Object {$_.packagefamilyname -like "Microsoft.Todos*"} | Remove-AppXPackage -AllUsers
Get-AppxPackage -AllUsers | Where-Object {$_.packagefamilyname -like "Microsoft.VP9VideoExtensions*"} | Remove-AppXPackage -AllUsers
Get-AppxPackage -AllUsers | Where-Object {$_.packagefamilyname -like "Microsoft.WebMediaExtensions*"} | Remove-AppXPackage -AllUsers
Get-AppxPackage -AllUsers | Where-Object {$_.packagefamilyname -like "Microsoft.WebpImageExtension*"} | Remove-AppXPackage -AllUsers
Get-AppxPackage -AllUsers | Where-Object {$_.packagefamilyname -like "Microsoft.Windows.Photos*"} | Remove-AppXPackage -AllUsers
Get-AppxPackage -AllUsers | Where-Object {$_.packagefamilyname -like "Microsoft.WindowsAlarms*"} | Remove-AppXPackage -AllUsers
Get-AppxPackage -AllUsers | Where-Object {$_.packagefamilyname -like "microsoft.windowscommunicationsapps*"} | Remove-AppXPackage -AllUsers
Get-AppxPackage -AllUsers | Where-Object {$_.packagefamilyname -like "Microsoft.WindowsFeedbackHub*"} | Remove-AppXPackage -AllUsers
Get-AppxPackage -AllUsers | Where-Object {$_.packagefamilyname -like "Microsoft.WindowsMaps*"} | Remove-AppXPackage -AllUsers
Get-AppxPackage -AllUsers | Where-Object {$_.packagefamilyname -like "Microsoft.Xbox.TCUI*"} | Remove-AppXPackage -AllUsers
Get-AppxPackage -AllUsers | Where-Object {$_.packagefamilyname -like "Microsoft.XboxGameOverlay*"} | Remove-AppXPackage -AllUsers
Get-AppxPackage -AllUsers | Where-Object {$_.packagefamilyname -like "Microsoft.XboxGamingOverlay*"} | Remove-AppXPackage -AllUsers
Get-AppxPackage -AllUsers | Where-Object {$_.packagefamilyname -like "Microsoft.XboxIdentityProvider*"} | Remove-AppXPackage -AllUsers
Get-AppxPackage -AllUsers | Where-Object {$_.packagefamilyname -like "Microsoft.XboxSpeechToTextOverlay*"} | Remove-AppXPackage -AllUsers
Get-AppxPackage -AllUsers | Where-Object {$_.packagefamilyname -like "Microsoft.YourPhone*"} | Remove-AppXPackage -AllUsers
Get-AppxPackage -AllUsers | Where-Object {$_.packagefamilyname -like "Microsoft.ZuneMusic*"} | Remove-AppXPackage -AllUsers
Get-AppxPackage -AllUsers | Where-Object {$_.packagefamilyname -like "Microsoft.ZuneVideo*"} | Remove-AppXPackage -AllUsers
Get-AppxPackage -AllUsers | Where-Object {$_.packagefamilyname -like "MicrosoftTeams*"} | Remove-AppXPackage -AllUsers
Get-AppxPackage -AllUsers | Where-Object {$_.packagefamilyname -like "MicrosoftWindows.Client.WebExperience*"} | Remove-AppXPackage -AllUsers