$arrayOfNums = 13.44, -1.99, 1.99, 25.45, 9999.34233333, 0.342343, -8, -9, 0.23433, 5.45

$measures = $arrayOfNums | Measure-Object -Minimum -Maximum -Sum -Average

Write-Host "The array of $($measures.Count) elements has:"
Write-Host "`tMinimum value of $($measures.Minimum.ToString('F2'))"
Write-Host "`tMaximum value of $($measures.Maximum.ToString('F2'))"
Write-Host "`tSum of $($measures.Sum.ToString('F2'))"
Write-Host "`tAverage of $($measures.Average.ToString('F2'))"