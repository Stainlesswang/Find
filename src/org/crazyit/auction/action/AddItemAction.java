package org.crazyit.auction.action;

import java.util.*;
import com.opensymphony.xwork2.ActionContext;

import org.crazyit.auction.service.AuctionManager;
import org.crazyit.auction.domain.*;
import org.crazyit.auction.exception.AuctionException;
import org.crazyit.auction.action.base.BaseAction;

public class AddItemAction extends BaseAction
{
	private Item item;
	private int avail;
	private int kindId;
	private String vercode;
	// �����û������execute����
	public String execute() throws Exception
	{

		Map session = ActionContext.getContext().getSession();
		String ver2 = (String)session.get("rand");
		// ǿ��ϵͳ�����ɵ������֤��ʧЧ
		session.put("rand" , null);
		Integer userId = (Integer)session.get("userId");
		// ����û��������֤����ϵͳ�����������֤����ͬ
//		if (vercode.equals(ver2))
			if (true)
		{
			// �����û�ѡ����Чʱ��ѡ�ָ��ʵ�ʵ���Чʱ��
			switch(avail)
			{
				case 6 :
					avail = 7;
					break;
				case 7 :
					avail = 30;
					break;
				case 8 :
					avail = 365;
					break;
			}
			// �����Ʒ
			System.out.println("item==================================================="+
					getItem().getItemName());
			System.out.println("item==================================================="+
					getItem().getBeizhu());
			System.out.println("item==================================================="+
					getItem().getInitPrice());
			System.out.println("item==================================================="+
					getItem().getBeizhu());
			System.out.println("item==================================================="+
					getItem().getItemRemark());
			System.out.println("item==================================================="+
					getItem().getItemDesc());
			System.out.println("item==================================================="+
					avail+kindId+userId);
			mgr.addItem(item ,avail , kindId, userId);
			return SUCCESS;
		}
		else
		{
			addActionError("��֤�벻ƥ��,����������");
			return INPUT;
		}
	}

	// item��setter��getter����
	public void setItem(Item item)
	{
		this.item = item;
	}
	public Item getItem()
	{
		return this.item;
	}

	// avail��setter��getter����
	public void setAvail(int avail)
	{
		this.avail = avail;
	}
	public int getAvail()
	{
		return this.avail;
	}

	// kindId��setter��getter����
	public void setKindId(int kindId)
	{
		this.kindId = kindId;
	}
	public int getKindId()
	{
		return this.kindId;
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