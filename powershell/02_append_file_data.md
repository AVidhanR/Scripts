In PowerShell, you can append the content of multiple files into a single file using the Get-Content and Add-Content cmdlets. This is a clean and efficient method that avoids the complexities of other approaches. 
Method 1: Using wildcards (simplest for files in one folder)
This approach is best when all the files you want to combine are in the same folder and have a common name or file extension. 
powershell
Get-Content "C:\Path\To\Files\input*.txt" | Out-File "C:\Path\To\Files\combined.txt"
Use code with caution.

Get-Content "C:\Path\To\Files\input*.txt" reads the contents of every .txt file in the specified directory whose name begins with input. You can use any wildcard (*) to match the desired files.
| is the pipeline operator, which sends the output of Get-Content to the next command.
Out-File "C:\Path\To\Files\combined.txt" writes the piped content to a new file named combined.txt. This cmdlet creates the file if it doesn't exist and overwrites it if it does. 
Important: If you run this command multiple times, it will overwrite the destination file each time. To avoid this, use Add-Content instead of Out-File. 
Method 2: Appending to an existing file with a loop
This is the most flexible approach for files scattered across different directories or that don't follow a simple naming pattern. The script uses a loop to process files one by one, which is more memory-efficient than loading all file contents at once. 
powershell
# First, create or clear the destination file
Out-File -FilePath "C:\Path\To\Files\combined.txt" -Force

# Define the list of files to append
$filesToAppend = @(
    "C:\Path\To\Files\file1.txt",
    "C:\Different\Path\To\Files\file2.log",
    "C:\Path\To\Files\file3.txt"
)

# Loop through the files and append their content
foreach ($file in $filesToAppend) {
    Get-Content -Path $file | Add-Content -Path "C:\Path\To\Files\combined.txt"
}
Use code with caution.

Out-File ... -Force ensures you start with a clean file.
$filesToAppend is an array containing the paths to all the files you want to combine.
foreach ($file in $filesToAppend) iterates through each file in the array.
Get-Content -Path $file reads the content of the current file in the loop.
Add-Content -Path "..." appends the content to the end of the combined file. 
Method 3: Forcing a specific character encoding
PowerShell cmdlets like Out-File and Set-Content have different default character encodings depending on the PowerShell version. To prevent formatting issues, it is best to explicitly specify the encoding. 
powershell
Get-Content "C:\Path\To\Files\*.txt" | Out-File "C:\Path\To\Files\combined.txt" -Encoding UTF8
Use code with caution.

-Encoding UTF8 explicitly sets the character encoding for the output file, ensuring compatibility with most modern applications
