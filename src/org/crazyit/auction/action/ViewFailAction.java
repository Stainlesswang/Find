package org.crazyit.auction.action;

import java.util.*;
import com.opensymphony.xwork2.ActionContext;

import org.crazyit.auction.service.AuctionManager;
import org.crazyit.auction.business.*;
import org.crazyit.auction.exception.AuctionException;
import org.crazyit.auction.action.base.BaseAction;
public class ViewFailAction extends BaseAction
{
	private List<ItemBean> failItems;

	public String execute()throws Exception
	{
		setFailItems(mgr.getFailItems());
		return SUCCESS;
	}

	// failItems的setter和getter方法
	public void setFailItems(List<ItemBean> failItems)
	{
		this.failItems = failItems;
	}
	public List<ItemBean> getFailItems()
	{
		 return this.failItems;
	}
}