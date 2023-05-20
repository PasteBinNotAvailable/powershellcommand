$uri = "https://discord.com/api/webhooks/1109406458925301820/b3hYIw5zfxg1MwGsKtR72rv9M_1GnpRBeD2FOmx29FsQQSNbQebuPWSI4bMsEdrqtUUL"

$var = "1"

$hash = @{ "content" = "@everyone"; }

$JSON = $hash | convertto-json

Invoke-WebRequest -uri $uri -Method POST -Body $JSON -Headers @{'Content-Type' = 'application/json'} 
Write-Host "Spamming..."
