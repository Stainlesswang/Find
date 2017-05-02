package org.crazyit.auction.action.base;

import com.opensymphony.xwork2.ActionSupport;

import org.crazyit.auction.service.AuctionManager;
import org.crazyit.auction.exception.AuctionException;

public class BaseAction extends ActionSupport
{
	protected AuctionManager mgr;

	public void setMgr(AuctionManager mgr)
	{
		this.mgr = mgr;
	}
}