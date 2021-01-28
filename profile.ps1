Import-Module PSReadLine

Set-PSReadLineOption -PredictionSource History

Set-PSReadLineKeyHandler -Key Ctrl+Shift+b `
                         -BriefDescription BuildCurrentDirectory `
                         -LongDescription "Build the current directory" `
                         -ScriptBlock {
    [Microsoft.PowerShell.PSConsoleReadLine]::RevertLine()
    [Microsoft.PowerShell.PSConsoleReadLine]::Insert("Invoke-Build")
    [Microsoft.PowerShell.PSConsoleReadLine]::AcceptLine()
}