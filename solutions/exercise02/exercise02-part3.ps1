$array1 = 1.39, 23.4, -18.3, 1.99, 45.89, 99.99, 9.01, -4.3, -1.99, 1.99
$array2 = 'Value1', 'Value2'

$array1 += $array2

Write-Host 'Before modifications'
$array1

$array1[0] += 1.04
$array1[2] += 1.04
$array1[4] += 1.04
$array1[$array1.Length - 1] += 1.04

Write-Host 'After modifications'
$array1
