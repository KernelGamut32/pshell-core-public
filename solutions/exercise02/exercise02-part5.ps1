$style1 = @{
    ForegroundColor = 'Blue'
    BackgroundColor = 'Yellow'
}

$style2 = @{
    ForegroundColor = 'White'
    BackgroundColor = 'Red'
}

$text = "Here's the text"

Write-Host "$text" @style1

Write-Host "$text" @style2