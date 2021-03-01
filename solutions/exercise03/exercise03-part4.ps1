$input = Read-Host -Prompt "Please enter a string"

$counts = New-Object 'System.Collections.Generic.Dictionary[char, int]'
[char[]]$input | ForEach-Object -Process { $counts[$_]++ }
$counts