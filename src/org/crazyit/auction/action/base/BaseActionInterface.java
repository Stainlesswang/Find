package org.crazyit.auction.action.base;

import com.opensymphony.xwork2.Action;

import org.crazyit.auction.service.AuctionManager;
public class BaseActionInterface implements Action
{
	protected AuctionManager mgr;

	public void setMgr(AuctionManager mgr)
	{
		this.mgr = mgr;
	}

	public String execute() throws Exception
	{
		return SUCCESS;
	}
}