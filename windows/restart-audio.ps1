Write-Host "Restarting Windows Audio services..." -ForegroundColor Cyan

try {
    Write-Host "`nStopping Windows Audio..." -ForegroundColor Yellow
    Stop-Service -Name "audiosrv" -Force -Verbose

    Write-Host "`nStopping Audio Endpoint Builder..." -ForegroundColor Yellow
    Stop-Service -Name "AudioEndpointBuilder" -Force -Verbose

    Write-Host "`nStarting Audio Endpoint Builder..." -ForegroundColor Green
    Start-Service -Name "AudioEndpointBuilder" -Verbose

    Write-Host "`nStarting Windows Audio..." -ForegroundColor Green
    Start-Service -Name "audiosrv" -Verbose

    Write-Host "`nAudio services restarted successfully." -ForegroundColor Green
}
catch {
    Write-Host "`nError: $($_.Exception.Message)" -ForegroundColor Red
}
