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

Write-Host ""
$NameWithBirthdays.GetType()

Write-Host "Add data into the hastable"
$NameWithBirthdays.Add("VinJ", "10-10-2000")
$NameWithBirthdays

Write-Host ""
Write-Host "Modify Existing data"
$NameWithBirthdays.Set_Item("VinJ", "09-09-2000")
$NameWithBirthdays

Write-Host ""
Write-Host "Specific Data for eg: Vidhan's"
$NameWithBirthdays["Vidhan"]

Write-Host ""
Write-Host "Remove Items in Hashtable for eg: Let's remove VinJ's"
$NameWithBirthdays.Remove("VinJ")
$NameWithBirthdays
