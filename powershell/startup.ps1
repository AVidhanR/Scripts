Function Create-File {
	Param()
	$FileName = Read-Host -Prompt "Enter file name: "
	$FileExtension = Read-Host -Prompt "Enter file extension: "
	$CurrentPath = pwd
	$Response = New-Item -Path $CurrentPath\$FileName.$FileExtension -Type "File" -Value ""
	Return $Response
	Clear
}

Function Create-Directory {
	Param()
	$DirectoryName = Read-Host -Prompt "Enter directory name: "
	$CurrentPath = pwd
	$Response = New-Item -Path $CurrentPath\$DirectoryName -Type "Dir"
	Return $Response
	Clear
}

# ----------------------------------------

Write-Host ""
[Int32]$Choice = 0
[String]$Response = ""

Do {	
	Write-Host "Welcome developer! What you wannna do?"
	Write-Host ""
	Write-Host "1. Create a File"
	Write-Host "2. Create a Directory"
	Write-Host "3. Exit"
	Write-Host ""

	$Choice = Read-Host -Prompt "Enter your choice: "
	Write-Host ""
	
	Switch ($Choice) {
		"1" { 
			$Response = Create-File;
			Write-Host ""
			Write-Host "File Path: " $Response " - File Creation was Successfull!";
			Write-Host "";
			Break 
		}

		"2" { 
			$Response = Create-Directory; 
			Write-Host "";
			Write-Host "Dir Path: " $Response " - Directory Creation was Successfull!";
			Write-Host "";
			Break 
		}
	
	}
} While ($Choice -ge 1 -and $Choice -le 2)
# Auto Exits if not available in the above number range.

