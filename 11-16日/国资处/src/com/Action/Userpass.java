package com.Action;  
import com.opensymphony.xwork2.Action;  
import org.apache.struts2.ServletActionContext;  
import com.opensymphony.xwork2.ActionContext;  
import com.opensymphony.xwork2.ActionInvocation;  
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;  
public class Userpass extends AbstractInterceptor {  
	  
    @Override  
    public String intercept(ActionInvocation invocation) throws Exception {  
  
        // 取得请求相关的ActionContext实例  
        ActionContext ctx = invocation.getInvocationContext();  
        //String user = (String) session.get("nameuser");  
        String user = (String)ServletActionContext.getRequest().getSession().getAttribute("nameuser");
        // 如果没有登陆，或者登陆所有的用户名不是yuewei，都返回重新登陆  
        if (user != null) {  
           return invocation.invoke();  
        }  
        ctx.put("tip", "你还没有登录");  
        return Action.LOGIN;  
  
    }  
  
}  