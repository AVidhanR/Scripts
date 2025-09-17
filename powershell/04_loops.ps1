Write-Host ""
Write-Host "Loops in PS using Arrays"

$Fruits = @("Apple", "Banana", "Grapes")

Write-Host "For loop demo."
$FruitsLength = $Fruits.Length
For ($i = 0; $i -lt $FruitsLength; $i++) {
	Write-Host "It's " $Fruits[$i]
}

Write-Host ""
Write-Host "Why not For Each?, Okay."
ForEach ($Fruit In $Fruits) {
	Write-Host $Fruit
}

Write-Host ""
$Counter = 0
Write-Host "PS: We have while loop as well!"
While ($Counter -ne 3) {
	Write-Host $Fruits[$Counter]
	$Counter++
}

$Counter = 0
Write-Host ""
Write-Host "Do While loop as well: "
Do {
	Write-Host $Fruits[$Counter]
	$Counter++
} While ($Counter -ne 3)
