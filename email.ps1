$MailBody = "Body"  
$SmtpServer = 'smtp.gmail.com'  
$SmtpUser = $SmtpUser
$SmtpPassword = $SmtpPassword
$MailFrom = $MailFrom  
$MailTo = $MailTo
$MailSubject = $MailSubject 
$Credentials = New-Object System.Management.Automation.PSCredential -ArgumentList $SmtpUser, $($SmtpPassword | ConvertTo-SecureString -AsPlainText -Force)  
Send-MailMessage -To "$MailTo" -from "$MailFrom" -Subject $MailSubject -Body "$MailBody" -SmtpServer $SmtpServer -BodyAsHtml -UseSsl -Credential $Credentials -port 587
#with attachment below
#Send-MailMessage -To "$MailtTo" -from "$MailFrom" -Subject $MailSubject -Body "$Body" -Attachments ".\SampleAttachment.txt" -SmtpServer $SmtpServer -BodyAsHtml -UseSsl -Credential $Credentials -port 587
