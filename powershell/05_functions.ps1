Write-Host ""
Write-Host "Functions are the best!"

Function Test-Google {
	Param($ConnectionName, $PingCount)
	Test-Connection $ConnectionName -Count $PingCount
}

# Try the below in Powershell!
# 
# Test-Google -ConnectionName google.com -PingCount 1
#
# Make sure to use the below scenario for the above example

# These two bindings make the parameter `Text` mandatory.
Function Print-Text {
	[CmdletBinding()]
	Param(
		[Parameter(Mandatory)]
		[String]$Text
	)
	Write-Host $Text
}

Print-Text
