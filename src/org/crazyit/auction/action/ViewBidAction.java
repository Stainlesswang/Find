package org.crazyit.auction.action;

import java.util.*;
import com.opensymphony.xwork2.ActionContext;

import org.crazyit.auction.service.AuctionManager;
import org.crazyit.auction.business.*;
import org.crazyit.auction.exception.AuctionException;
import org.crazyit.auction.action.base.BaseAction;
public class ViewBidAction extends BaseAction
{
	private List<BidBean> bids;

	public String execute()throws Exception
	{
		Map session = ActionContext.getContext().getSession();
		Integer userId = (Integer)session.get("userId");
		setBids(mgr.getBidByUser(userId));
		return SUCCESS;
	}

	// bids的setter和getter方法
	public void setBids(List<BidBean> bids)
	{
		this.bids = bids;
	}
	public List<BidBean> getBids()
	{
		 return this.bids;
	}
}