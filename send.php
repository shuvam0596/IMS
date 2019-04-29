<?php
$to = 'gourav31ite@gmail.com';
$subject = 'Test email'; 
$message = "Hello World!\n\nThis is my first mail."; 
$headers = "From: gourav31ite@gmail.com\r\nReply-To: gourav31ite@gmail.com";
$mail_sent = @mail( $to, $subject, $message, $headers );
echo $mail_sent ? "Mail sent" : "Mail failed";
?>