package com.Action;
import com.opensymphony.xwork2.ActionSupport;

public class Show extends ActionSupport {
	/**
	 * @return
	 */
	String order;
	public String execute() {
		// TODO �Զ����ɵķ������
		return order;
	}
	public String getOrder() {
		return order;
	}
	public void setOrder(String order) {
		this.order = order;
	}
	
}