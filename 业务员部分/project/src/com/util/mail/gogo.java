package com.util.mail;

public class gogo {
	public static void sendEmail(String username,String realname,String password,String device){   
        //�������Ҫ�������ʼ�   
     MailSenderInfo mailInfo = new MailSenderInfo();    
     mailInfo.setMailServerHost("smtp.qq.com");    
     mailInfo.setMailServerPort("25");    
     mailInfo.setValidate(true);    
     mailInfo.setUserName(username);    
     mailInfo.setPassword(password);//������������    
     System.out.println(username);
     System.out.println(password);
     mailInfo.setFromAddress(username);    
     mailInfo.setToAddress("1030009266@qq.com");    
     mailInfo.setSubject("������������豸����");    
     mailInfo.setContent(realname+"�������"+device+"!");    
        //�������Ҫ�������ʼ�   
     SimpleMailSender sms = new SimpleMailSender();   
         sms.sendTextMail(mailInfo);//���������ʽ    
         sms.sendHtmlMail(mailInfo);//����html��ʽ   
   }  

}
