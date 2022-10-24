$fromAddress = '' #enter the from address here
$toaddress = ''   #enter the to address here
$smtpserver = ''  #enter the SMTP Server here
$smtpPort = '587' #set port number
$subject = 'Test Email Message'
$body = @"
Test
1234
"@

$creds = Get-Credential

[System.Net.ServicePointManager]::ServerCertificateValidationCallback = { return $true }
[System.Net.ServicePointManager]::SecurityProtocol = 'Tls,TLS11,TLS12'

Send-MailMessage -From $fromAddress -to $toaddress -Subject $subject -Body $body -Port $smtpPort -Credential $creds -SmtpServer $smtpserver -UseSsl
