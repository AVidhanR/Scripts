# Intro to Hashtables!

Write-Host ""

$NameWithBirthdays = @{
    "Vidhan" = "12-12-2000";
    "Red" = "11-11-2000"
}

# Go to the desired line and Press:
# Esc, yy (yanked? into the nvim clipboard history)
# Go to your desired location you wanna paste and press:
# p

$NameWithBirthdays

Write-Host "Type: "
$NameWithBirthdays.GetType()
