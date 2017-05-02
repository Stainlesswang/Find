package org.crazyit.auction.schedule;

import java.util.TimerTask;

import org.crazyit.auction.service.AuctionManager;
import org.crazyit.auction.exception.AuctionException;

public class CheckWiner
{
	// ������������ҵ���߼����
	private AuctionManager mgr;
	// ����ע��ҵ���߼���������setter����
	public void setMgr(AuctionManager mgr)
	{
		this.mgr = mgr;
	}
	// �������ִ����
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
