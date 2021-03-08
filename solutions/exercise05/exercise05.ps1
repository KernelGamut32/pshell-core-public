$items = New-Object 'System.Collections.ArrayList'

while ($true) {
    $itemName = Read-Host -Prompt 'Please enter item name'
    if ($itemName -ceq 'DONE') {
        break
    }
    [System.Decimal]$itemCost = Read-Host -Prompt 'Please enter item cost'
    $items.Add([PSCustomObject]@{
        Name = $itemName
        Cost = $itemCost
    }) | Out-Null
}

[System.Decimal]$subTotal = ($items | Measure-Object -Property Cost -Sum).Sum
$subTotal += ($subTotal * 0.075)

$subTotalFormatted = $subTotal.ToString('C')
Write-Host "Sub-total of all items is $subTotalFormatted"

[System.Decimal]$payment = 0.00

do {
    [System.Boolean]$amountValid = $true
    $payment = Read-Host -Prompt 'Please enter payment amount'
    if ($payment -lt $subTotal) {
        Write-Host 'Please enter an amount large enough to cover the sub-total'
        $amountValid = $false
    }
} while (!$amountValid)

[System.Decimal]$change = $payment - $subTotal

Write-Host 'Here are your order details:'
$items
Write-Host "Sub-Total = $subTotalFormatted, Payment = $($payment.ToString('C')), Change = $($change.ToString('C'))"
