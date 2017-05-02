package org.crazyit.auction.action;

import com.opensymphony.xwork2.ActionContext;

import java.util.*;
import org.crazyit.auction.action.base.BaseAction;

public class LoginAction extends BaseAction
{
	private String username;
	private String password;
	private String vercode;

	@Override
	public String execute() throws Exception
	{
		Map session = ActionContext.getContext().getSession();
		String ver2 = (String )session.get("rand");
		// ���Session�е������֤���ַ�����
		session.put("rand" , null);
//		if (vercode.equals(ver2))
			if (true)
		{
			Integer userId = mgr.validLogin(username,password);
			if (userId != null && userId > 0)
			{
				session.put("userId" , userId);
				return SUCCESS;
			}
			else
			{
				addActionError("�û���/���벻ƥ��");
				return "failure";
			}
		}
		else
		{
			addActionError("��֤�벻ƥ��,����������");
			return "failure";
		}
	}
	// username��setter��getter����
	public void setUsername(String username)
	{
		this.username = username;
	}
	public String getUsername()
	{
		return this.username;
	}

	// password��setter��getter����
	public void setPassword(String password)
	{
		this.password = password;
	}
	public String getPassword()
	{
		return this.password;
	}

	// vercode��setter��getter����
	public void setVercode(String vercode)
	{
		this.vercode = vercode;
	}
	public String getVercode()
	{
		return this.vercode;
	}
}