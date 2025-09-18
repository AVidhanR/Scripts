Function Create-File {
	Param()
	$FileName = Read-Host -Prompt "Enter file name: "
	$FileExtension = Read-Host -Prompt "Enter file extension: "
	$CurrentPath = pwd
	$Output = New-Item -Path $CurrentPath\$FileName.$FileExtension -Type "File" -Value ""
	"At this $Output - Created a new file" | Out-File history.txt
	Clear
}

Function Create-Directory {
	Param()
	Write-Host "Coming Soon"
	Write-Host "----------------------"
}

Function Delete-File {
	Param()
	Write-Host "Coming Soon"
	Write-Host "----------------------"
}

Function Delete-Directory {
	Param()
	Write-Host "Coming Soon"
	Write-Host "----------------------"
}

# ----------------------------------------

Write-Host ""
[Int32]$Choice = 0

Do {	
	Write-Host "Welcome developer! What you wannna do?"
	Write-Host ""
	Write-Host "1. Create a File"
	Write-Host "2. Create a Directory"
	Write-Host "3. Delete a File"
	Write-Host "4. Delete a Directory"
	Write-Host "5. Exit"
	Write-Host ""

	$Choice = Read-Host -Prompt "Enter your choice: "
	Write-Host ""
	
	Switch ($Choice) {
		"1" { 
			Create-File; 
			Write-Host "File Creation was Successful!";
			Write-Host "";
			Break 
		}
		"2" { Create-Directory; Break }
		"3" { Delete-File; Break }
		"4" { Delete-Directory; Break }
	}
} While ($Choice -ge 1 -and $Choice -le 4)
# Auto Exits if not available in the above number range.

