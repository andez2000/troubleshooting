Stop-Service -Name "audiosrv" -Force
Stop-Service -Name "AudioEndpointBuilder" -Force

Start-Service -Name "AudioEndpointBuilder"
Start-Service -Name "audiosrv"
