package org.crazyit.auction.action;

import java.util.*;
import com.opensymphony.xwork2.ActionContext;

import org.crazyit.auction.service.AuctionManager;
import org.crazyit.auction.business.*;
import org.crazyit.auction.exception.AuctionException;
import org.crazyit.auction.action.base.BaseAction;
import org.crazyit.auction.domain.*;
public class ViewItemAction extends BaseAction
{
	private int kindId;
	private String kind;
	private List<ItemBean> items;

	public String execute()throws Exception
	{

		Map session = ActionContext.getContext().getSession();
		Integer userId = (Integer)session.get("userId");
		List<ItemBean> items2=mgr.findItemAll(userId);
		if (items2.size()==0){
			System.out.println("items2Nullllllllllllllllllllllllllllllllllllllll");
		}
			setItems(mgr.findItemAll(userId));
			return SUCCESS;

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

	// kind��setter��getter����
	public void setKind(String kind)
	{
		this.kind = kind;
	}
	public String getKind()
	{
		 return this.kind;
	}

	// items��setter��getter����
	public void setItems(List<ItemBean> items)
	{
		this.items = items;
	}
	public List<ItemBean> getItems()
	{
		 return this.items;
	}
}