package com.Action;  
import com.opensymphony.xwork2.Action;  
import org.apache.struts2.ServletActionContext;  
import com.opensymphony.xwork2.ActionContext;  
import com.opensymphony.xwork2.ActionInvocation;  
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;  
public class Userpass extends AbstractInterceptor {  
	  
    @Override  
    public String intercept(ActionInvocation invocation) throws Exception {  
  
        // ȡ��������ص�ActionContextʵ��  
        ActionContext ctx = invocation.getInvocationContext();  
        //String user = (String) session.get("nameuser");  
        String user = (String)ServletActionContext.getRequest().getSession().getAttribute("nameuser");
        // ���û�е�½�����ߵ�½���е��û�������yuewei�����������µ�½  
        if (user != null) {  
           return invocation.invoke();  
        }  
        ctx.put("tip", "�㻹û�е�¼");  
        return Action.LOGIN;  
  
    }  
  
}  