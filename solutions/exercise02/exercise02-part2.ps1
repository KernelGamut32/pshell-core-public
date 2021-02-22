[System.Decimal]$cost = Read-Host 'Please enter the cost of your item'
[System.Decimal]$taxRate = Read-Host 'Please enter the tax rate'

[System.Decimal]$totalCost = $cost + ($cost * ($taxRate / 100))

$totalCostFormatted = '{0:C}' -f $totalCost

Write-Host "Your total cost is $($totalCostFormatted)"

[System.Decimal]$amtPaid = Read-Host 'Please enter the amount paid'

[System.Decimal]$change = $amtPaid - $totalCost

$amtPaidFormatted = '{0:C}' -f $amtPaid
$changeFormated = '{0:C}' -f $change

Write-Host "A total cost of $($totalCostFormatted) with $($amtPaidFormatted) paid results in $($changeFormated) of change"