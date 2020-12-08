$server01 = [PSCustomObject]@{
    Name = 'SERVER01'
    Department = 'Accounting'
    Status = 'Working'
}

$server02 = [PSCustomObject]@{
    Name = 'SERVER02'
    Department = 'HR'
    Status = 'Broken'
}

$server03 = [PSCustomObject]@{
    Name = 'SERVER03'
    Department = 'Manufacturing'
    Status = 'Working'
}

$servers = New-Object 'System.Collections.ArrayList'

$servers.Add($server01) | Out-Null
$servers.Add($server02) | Out-Null
$servers.Add($server03) | Out-Null

$servers | Format-Table

$serverNew = [PSCustomObject]@{
    Name = 'SERVER04'
    Department = 'Front Office'
    Status = 'Working'
}

$servers[1] = $serverNew
$servers[$servers.Count - 1].Department = 'IT'
$servers.Remove($server01)

$servers | Format-List
