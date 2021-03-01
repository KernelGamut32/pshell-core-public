Get-EventLog -LogName Application | Where-Object {$_.EntryType -eq 'Error'} | 
    Sort-Object -Property TimeGenerated -Descending | 
    Select-Object -Property EventID, Source, Message -First 100 | 
    Export-Csv -Path .\events.csv -NoTypeInformation

Get-EventLog -LogName Application | Where-Object {$_.EntryType -eq 'Error'} |
    Sort-Object -Property TimeGenerated | Select-Object -Property EventID, TimeGenerated, Source -Last 25 |
    ConvertTo-Html -Property EventID, TimeGenerated, Source > events.html