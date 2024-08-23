Remove-Item -Path .\left.png
.\ffmpeg -rtsp_transport tcp -i "rtsp://admin:xxxx@172.20.1.237:554/cam/realmonitor?channel=1&subtype=0" -filter:v "crop=130:130:1200:600" -ss 1 -f image2 .\left.png 


Remove-Item -Path .\right.png
.\ffmpeg -rtsp_transport tcp -i "rtsp://admin:xxx@IPADDDRE:554/cam/realmonitor?channel=1&subtype=0" -filter:v "crop=130:130:2950:870" -ss 1 -f image2 .\right.png 


Remove-Item -Path .\full.png
.\ffmpeg -rtsp_transport tcp -i "rtsp://admin:xxxx@IPADDDRE:554/cam/realmonitor?channel=1&subtype=0" -ss 1 -f image2 .\full.png


Send-MailMessage –From noreply@domain.com –To user@domain.com –Subject “SB04-FuelLevel” –Body "body $(Get-date)" -Attachments .\left.png, .\right.png, .\full.png -SmtpServer SERVER.com


Remove-Item -Path .\left.png
Remove-Item -Path .\right.png
Remove-Item -Path .\full.png
