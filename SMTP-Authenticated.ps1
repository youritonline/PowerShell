$fromAddress = '' #enter the from address here
$toaddress = ''   #enter the to address here
$smtpserver = ''  #enter the SMTP Server here
$smtpPort = '465' #set port number
$subject = 'Test Email Message'
$body = @"
Test
1234
"@

$creds = Get-Credential

Send-MailMessage -From $fromAddress -to $toaddress -Subject $subject -Body $body -Port $smtpPort -Credential $creds -SmtpServer $smtpserver 
