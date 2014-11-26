package com.depot;
import com.Action.*;
import com.opensymphony.xwork2.ActionSupport;

public class Back extends ActionSupport {

	/**
	 * @return
	 */
	public String execute() {
		// TODO 自动生成的方法存根
		String tp=null;
		if(Zhuce.getZhuback().equals("success")){
			tp="1";
			Zhuce.setZhuback("faile");
		}
		else if(ActionLogin.getLogback().equals("success")){
			tp="success";
			ActionLogin.setLogback("faile");
		}
		else if(PlusDevice.getPlusback().equals("success")){
			tp="3";
			PlusDevice.setPlusback("faile");
		}
		else if(RepairAction.getRepback().equals("success")||RevertAction.getRetback().equals("success")){
			tp="4";
			RevertAction.setRetflag("success");
			RepairAction.setRepback("faile");
			RevertAction.setRetback("faile");
		}
		else if(Userdelete.getUserback().equals("success")){
			tp="5";
			ManShow.setOrder("2");
			Userdelete.setUserback("faile");
		}
		else if(AddAction.getAddback().equals("success")){
			tp="6";
			AddAction.setAddflag("success");
			AddAction.setAddback("faile");
		}
		return tp;
	}
}










