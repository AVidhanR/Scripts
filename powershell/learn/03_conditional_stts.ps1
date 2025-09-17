Write-Host "Conditional Statements in PS"
Write-Host ""

$age = Read-Host -Prompt "Enter your age: "

Write-Host "You are a " -NoNewLine
If ($age -ge 1 -and $age -le 16) {
	Write-Host "Gen Alpha!"
} ElseIf ($age -ge 17 -and $age -le 25) {
	Write-Host "GenZ!"
} Else {
	Write-Host "Millennial"
}

Write-Host ""
$CharacterName = "Arlecchino"
# Similarly, there's Switch case in PS!
Switch ($CharacterName) {
	"Arlecchino" { Write-Host "The Knave, $CharacterName"; break }
	"Clorinde" { Write-Host "The Champion"; break }
}
