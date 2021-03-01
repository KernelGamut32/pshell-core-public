if (!(Test-Path -Path '.\Transactions')) {
    New-Item -Path . -Name 'Transactions' -ItemType Directory
}

if (!(Test-Path -Path '.\Transactions\Input')) {
    New-Item -Path '.\Transactions' -Name 'Input' -ItemType Directory
}

if (!(Test-Path -Path '.\Transactions\Output')) {
    New-Item -Path '.\Transactions' -Name 'Output' -ItemType Directory
}

$trans1 = [PSCustomObject]@{
    Transaction = 'ABC123'
    Amount = 35449.99
}
$trans2 = [PSCustomObject]@{
    Transaction = 'DEF456'
    Amount = 165449.99
}
$trans3 = [PSCustomObject]@{
    Transaction = 'GHI789'
    Amount = 335449.99
}

$transactions = New-Object 'System.Collections.ArrayList'
$transactions.Add($trans1) | Out-Null
$transactions.Add($trans2) | Out-Null
$transactions.Add($trans3) | Out-Null

$transactions | Export-Csv -Path .\Transactions\Input\trans.csv -NoTypeInformation

Import-Csv -Path .\Transactions\Input\trans.csv |
    ConvertTo-Json | Set-Content -Path .\Transactions\Output\trans.json
