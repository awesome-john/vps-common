@echo off
diskperf -Y >nul
sc start audiosrv >nul
net user VPS VPSAsian123 /add >nul
net localgroup administrators VPS /add >nul
net user VPS /active:yes >nul
echo All done! Connect your VM using RDP.
echo IP:
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Can't get NGROK tunnel, be sure NGROK_AUTH_TOKEN is correct in Settings> Secrets> Repository secret"
echo User: VPS
echo Pass: VPSAsian123
