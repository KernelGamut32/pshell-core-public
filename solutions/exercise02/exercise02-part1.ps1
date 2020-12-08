[System.Decimal]$radius = Read-Host 'Please enter a value for circle radius'

$area = [Math]::PI * $radius * $radius
$circum = 2 * [Math]::PI * $radius

$radiusFormatted = '{0:F2}' -f $radius
$areaFormatted = '{0:F2}' -f $area
$circumFormatted = '{0:F2}' -f $circum

Write-Host "A circle with radius $($radiusFormatted) has area $($areaFormatted) and circumference $($circumFormatted)"
