function Get-Items {
    [CmdletBinding()]
    param()
    process {
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
        return $items
    }
}

function Get-Subtotal {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [System.Collections.ArrayList]$items
    )
    process {
        [System.Decimal]$subTotal = ($items | Measure-Object -Property Cost -Sum).Sum
        $subTotal += ($subTotal * 0.075)
        return $subTotal
    }
}

function Get-Payment {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [System.Decimal]$subTotal
    )
    process {
        do {
            [System.Boolean]$amountValid = $true
            [System.Decimal]$payment = Read-Host -Prompt 'Please enter payment amount'
            if ($payment -lt $subTotal) {
                Write-Host 'Please enter an amount large enough to cover the sub-total'
                $amountValid = $false
            }
        } while (!$amountValid)
        return $payment
    }
}

function Out-ShoppingSummary {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [System.Collections.ArrayList]$items,
        [Parameter(Mandatory)]
        [System.Decimal]$subTotal,
        [Parameter(Mandatory)]
        [System.Decimal]$payment,
        [Parameter(Mandatory)]
        [System.Decimal]$change
    )
    process {
        Write-Host 'Here are your order details:'
        $currentShop
        Write-Host "Sub-Total = $($subTotal.ToString('C')), Payment = $($payment.ToString('C')), Change = $($change.ToString('C'))"
    }
}

$currentShop = Get-Items
[System.Decimal]$subTotal = Get-Subtotal -items $currentShop

Write-Host "Sub-total of all items is $($subTotal.ToString('C'))"

[System.Decimal]$payment = Get-Payment -subTotal $subTotal
[System.Decimal]$change = $payment - $subTotal

Out-ShoppingSummary -items $currentShop -subTotal $subTotal -payment $payment -change $change
