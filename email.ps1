$Body = "Body"  
$SmtpServer = 'smtp.gmail.com'  
$SmtpUser = $smtpUser
$smtpPassword = $smtpPassword
$MailFrom = $smtpFrom  
$MailtTo = $smtpTarget  
$MailSubject = $emailSubject 
$Credentials = New-Object System.Management.Automation.PSCredential -ArgumentList $SmtpUser, $($smtpPassword | ConvertTo-SecureString -AsPlainText -Force)  
Send-MailMessage -To "$MailtTo" -from "$MailFrom" -Subject $MailSubject -Body "$Body" -SmtpServer $SmtpServer -BodyAsHtml -UseSsl -Credential $Credentials -port 587
#with attachment below
#Send-MailMessage -To "$MailtTo" -from "$MailFrom" -Subject $MailSubject -Body "$Body" -Attachments ".\SampleAttachment.txt" -SmtpServer $SmtpServer -BodyAsHtml -UseSsl -Credential $Credentials -port 587
