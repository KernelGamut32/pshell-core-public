Get-Service | Select-Object -Property Name, 
    @{label='Display Name'; expression={$_.DisplayName}} |
    Sort-Object -Property 'Display Name' | Select-Object -First 10

Get-Service | Where-Object {$_.Status -eq 'Running'}

Get-Process | Sort-Object -Property CPU -Descending

Get-Process | Sort-Object -Property VM -Descending | Select-Object -First 5

Get-Process | Sort-Object -Property CPU -Descending | Select-Object -First 1 -Property Name, CPU

Get-EventLog -LogName Application -Newest 100 | 
    Sort-Object -Property TimeGenerated -Descending |
    Select-Object -Property @{label='Entry Type';expression={$_.EntryType}},
    @{label='Time Generated';expression={$_.TimeGenerated}}