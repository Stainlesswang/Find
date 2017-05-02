package org.crazyit.auction.schedule;

import java.util.TimerTask;

import org.crazyit.auction.service.AuctionManager;
import org.crazyit.auction.exception.AuctionException;

public class CheckWiner
{
	// 该任务所依赖业务逻辑组件
	private AuctionManager mgr;
	// 依赖注入业务逻辑组件必须的setter方法
	public void setMgr(AuctionManager mgr)
	{
		this.mgr = mgr;
	}
	// 该任务的执行体
	public void check()
	{
		try
		{
			System.out.println("++++++----------------------------+++++++++" +
					"CheckWiner");
			mgr.updateWiner();
		}
		catch (AuctionException ae)
		{
			ae.printStackTrace();
		}
	}
}
