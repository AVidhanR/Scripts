# My First Comment
Write-Host "Hello, World" --NoNewLine
Write-Host " Hello, Again"

# Get-Help <command>
# Get-Help <command> -Full

"Some text to insert into a file" | Out-File outfileCommandDemo.txt

# Variables in PS
$Name = "Vidhan"

# Can pipe variable to a file!
$Name | Out-File varPipeToFile.txt

# To get the type of variable
$Name.GetType()

# Set different types of dtypes
$Name = $true
$Name.GetType()

# Can do math! with variables!
$x = 10
$y = 20
Write-Host "Sum of $x and $y is $x+$y"
# No Auto Conversions from Int to String or the other way

# String Object methods
$Name = "Vidhan"
$Name.Length

# To know the Properties for the Above $Name Object
$Name | Select-Object -Property *

Write-Host "Below are the available methods for $Name (String)"
Get-Member -InputObject $Name

Write-Host ""
# Reading input
$InputVar = Read-Host -Prompt "Enter any value: "
Write-Host "Entered Value: $InputVar"
