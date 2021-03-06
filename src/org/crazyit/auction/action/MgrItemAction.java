package org.crazyit.auction.action;

import java.util.*;
import com.opensymphony.xwork2.*;

import org.crazyit.auction.service.AuctionManager;
import org.crazyit.auction.business.*;
import org.crazyit.auction.exception.AuctionException;
import org.crazyit.auction.action.base.BaseActionInterface;
public class MgrItemAction extends BaseActionInterface
{
	private List<ItemBean> items;
	private List<KindBean> kinds;

	public String execute() throws Exception
	{
		Map session = ActionContext.getContext().getSession();
		Integer userId = (Integer)session.get("userId");
		setItems(mgr.getItemsByOwner(userId));
		setKinds(mgr.getAllKind());
		return SUCCESS;
	}

	// items的setter和getter方法
	public void setItems(List<ItemBean> items)
	{
		this.items = items;
	}
	public List<ItemBean> getItems()
	{
		 return this.items;
	}

	// kinds的setter和getter方法
	public void setKinds(List<KindBean> kinds)
	{
		this.kinds = kinds;
	}
	public List<KindBean> getKinds()
	{
		 return this.kinds;
	}
}