Write-Host ""
Write-Host "Exception Handling"

Function Test-Google {
	Param($ConnectionName, $PingCount)
	Test-Connection $ConnectionName -Count $PingCount
	Write-Error -Message "Error in Test-Google" -ErrorAction Stop
}


Try {
	Test-Google -ConnectionName google.com -PingCount 1 -ErrorAction Stop
} Catch {
	Write-Output "Launch Problem" Write-Output $_
}

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
