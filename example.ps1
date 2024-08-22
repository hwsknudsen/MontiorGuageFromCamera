Remove-Item -Path .\left.jpg
.\ffmpeg -i "rtsp://admin:xxxx@172.20.1.237:554/cam/realmonitor?channel=1&subtype=0" -filter:v "crop=130:130:1200:600" -ss 1 -f image2 .\left.jpg 


Remove-Item -Path .\right.jpg
.\ffmpeg -i "rtsp://admin:xxx@IPADDDRE:554/cam/realmonitor?channel=1&subtype=0" -filter:v "crop=130:130:2950:870" -ss 1 -f image2 .\right.jpg 


Remove-Item -Path .\full.jpg
.\ffmpeg -i "rtsp://admin:xxxx@IPADDDRE:554/cam/realmonitor?channel=1&subtype=0" -ss 1 -f image2 .\full.jpg


Send-MailMessage –From noreply@domain.com –To user@domain.com –Subject “SB04-FuelLevel” –Body "body $(Get-date)" -Attachments .\left.jpg, .\right.jpg, .\full.jpg -SmtpServer SERVER.com


Remove-Item -Path .\left.jpg
Remove-Item -Path .\right.jpg
Remove-Item -Path .\full.jpg
