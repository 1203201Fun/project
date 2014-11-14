package com.util.mail;

public class gogo {
	public static void sendEmail(String username,String realname,String password,String device){   
        //这个类主要是设置邮件   
     MailSenderInfo mailInfo = new MailSenderInfo();    
     mailInfo.setMailServerHost("smtp.qq.com");    
     mailInfo.setMailServerPort("25");    
     mailInfo.setValidate(true);    
     mailInfo.setUserName(username);    
     mailInfo.setPassword(password);//您的邮箱密码    
     System.out.println(username);
     System.out.println(password);
     mailInfo.setFromAddress(username);    
     mailInfo.setToAddress("1030009266@qq.com");    
     mailInfo.setSubject("设置邮箱标题设备借用");    
     mailInfo.setContent(realname+"申请借用"+device+"!");    
        //这个类主要来发送邮件   
     SimpleMailSender sms = new SimpleMailSender();   
         sms.sendTextMail(mailInfo);//发送文体格式    
         sms.sendHtmlMail(mailInfo);//发送html格式   
   }  

}
