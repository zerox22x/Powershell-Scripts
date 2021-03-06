#sto server state checker
# grab sto status , could use invoke-webrequast
$url = 'aHR0cDovL2xhdW5jaGVyLnN0YXJ0cmVrb25saW5lLmNvbS9sYXVuY2hlcl9zZXJ2ZXJfc3RhdHVz'
$decode = [System.Text.Encoding]::ASCII.GetString([System.Convert]::FromBase64String($url)) | Out-string
write-host $decode
$urld = wget + $decode
#$urld = wget $decode
Set-StrictMode -Version latest
#if the status doesnt equal ok/200 something is wrong , in this case show the status code
if ($urld.statuscode -ne "200"){
Write-Host "something is wrong"
$urld.Status}
# if the content equals down start this loop until the content doesnt equal down anymore
if ($urld.Content -eq "down"){
	DO 
		{cls cls # good old clear screen
		$urld = $null
		$urld = wget -uri $decode
		Get-Date
		write-host "STO is down"
		Sleep 10 #wait 10 seconds
	} While ($urld.Content -eq "down")
}
# if its up , launch sto , 
if ($urld.Content -eq "up") {
	cls # good old clear screen
	ping 208.95.186.13
	ping 208.95.186.12
	ping 208.95.186.37
	ping 208.95.186.11
	cls
	Get-Date
	& "E:\steamgames\SteamApps\common\Star Trek Online\Star Trek Online.exe"
	Write-Host "Launching game"
	write-host "STO is up"
	
	
}

# SIG # Begin signature block
# MIID3QYJKoZIhvcNAQcCoIIDzjCCA8oCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUhpxN463LywzIQKj4crv4Zf+n
# 9N2gggIBMIIB/TCCAWqgAwIBAgIQPxYLyeSMdJhBE1oUTd2+zzAJBgUrDgMCHQUA
# MBIxEDAOBgNVBAMTB1J5ZXhhbmUwHhcNMTYwNjIzMjAxMDU3WhcNMzkxMjMxMjM1
# OTU5WjASMRAwDgYDVQQDEwdSeWV4YW5lMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCB
# iQKBgQC8/5x3oD+MtoqIKa8ocRauQwj3+f0yYBUFDXE3M5UloOPKZm0xxOFd0S1J
# RdgUo6CRJ08bZHb2QeJdB+ZCJ4USMiKIRywrNrNveqb7u8BvjvYQCSyk5cCG1JFJ
# o4Jdmzy3oKHRisRzqVrqIfKAImboFJDZ3RpP+fKyTnZ2zyHXwQIDAQABo1wwWjAT
# BgNVHSUEDDAKBggrBgEFBQcDAzBDBgNVHQEEPDA6gBBhh3qt22pTqCdvk36r2JFr
# oRQwEjEQMA4GA1UEAxMHUnlleGFuZYIQPxYLyeSMdJhBE1oUTd2+zzAJBgUrDgMC
# HQUAA4GBAEOlSKknPK1HlONMoWL31guA5lKvorRUY+WbNJai/r/I9vKYnk6UqPJc
# D9dcXxP1v/KAtiubCTvuC8TJxHuKfyfzm2XXZ3giczW3sinzI4L/5ys+v4J9FSCu
# CpI5eolGewKUQ7XCRe16WlSk+tkxOgBNdz4sD0WgWkpKZ++f1Vd5MYIBRjCCAUIC
# AQEwJjASMRAwDgYDVQQDEwdSeWV4YW5lAhA/FgvJ5Ix0mEETWhRN3b7PMAkGBSsO
# AwIaBQCgeDAYBgorBgEEAYI3AgEMMQowCKACgAChAoAAMBkGCSqGSIb3DQEJAzEM
# BgorBgEEAYI3AgEEMBwGCisGAQQBgjcCAQsxDjAMBgorBgEEAYI3AgEVMCMGCSqG
# SIb3DQEJBDEWBBT4usouj/KLPkMswPQ/bFJClUpvVTANBgkqhkiG9w0BAQEFAASB
# gEO67mI9eAJQ6cu8WiXJ7jEQtj7t1/DFKZC/NSFDsqC6vw/rF5yVKH/iWLVva6CL
# uirvQVQtTegxmjptotYlvbEqnwS+KukWUSZclD/55Umw+5gOA0gnglpBVflMFmXx
# 6yOvcE4cRx1fyq9nF0BE97fFMWoXisZmT+Y29ALzTu1F
# SIG # End signature block
