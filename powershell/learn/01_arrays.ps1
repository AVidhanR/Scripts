# Arrays in ps!

$Fruits = @("Apple", "Banana", "Pineapple")

# Just entering as below will output them all!
$Fruits

# Get the type of it.
$Fruits.GetType()
Write-Host ""

# Access specific values of the array.
$Fruits[0]
Write-Host ""

Write-Host "Length of the 1st word of the Fruits array: " -NoNewLine
$Fruits[0].Length

# Append data onto the Fruits Array using +=
Write-Host ""
$Fruits += "Guava"
$Fruits

# Write-Host ""
# $Fruits[4] = "5th Index (Dummy)"
# $Fruits 
# Not Possible!
