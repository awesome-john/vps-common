@echo off
diskperf -Y >nul
sc start audiosrv >nul
net user hoangnvm MinhHoang123 /add >nul
net localgroup administrators hoangnvm /add >nul
net user hoangnvm /active:yes >nul
echo All done! Connect your VM using RDP.
echo IP:
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Can't get NGROK tunnel, be sure NGROK_AUTH_TOKEN is correct in Settings> Secrets> Repository secret"
echo User: hoangnvm
echo Pass: MinhHoang123
