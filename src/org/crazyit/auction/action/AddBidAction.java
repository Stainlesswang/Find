package org.crazyit.auction.action;

import java.util.*;
import com.opensymphony.xwork2.ActionContext;

import org.crazyit.auction.service.AuctionManager;
import org.crazyit.auction.domain.*;
import org.crazyit.auction.exception.AuctionException;
import org.crazyit.auction.action.base.BaseAction;

import javax.servlet.http.HttpServletResponse;

public class AddBidAction extends BaseAction
{
	// ��װ�������������
	private int itemId;
	private Bid bid;
	private double initPrice;
	private String vercode;
	private String city;
	private String address;
	// ��дvalidate��������Զ�������У��
//	@Override
//	public void validate()
//	{
//		// �û����۱��������Ʒ�ĵ�ǰ��߼�
//		if(bid.getBidPrice() <= maxPrice)
//		{
//			addFieldError("bid.bidPrice", "������ľ��۱�����ڵ�ǰ��߼ۣ�");
//		}
//	}
	// �����û�����
	public String execute() throws Exception
	{
		Map session = ActionContext.getContext().getSession();
		// ȡ��Session�е�userId�͸ո����ɵ������֤��
		Integer userId = (Integer)session.get("userId");
		String ver2 = (String)session.get("rand");
		session.put("rand" , null);
		// ����û��������֤���Session�е������֤����ͬ
//		if (vercode.equals(ver2))
			if (true)
		{
			System.out.println("+++++++++"+bid.getBeizhu());
			System.out.println("++++++++="+city);
			System.out.println("++++++++="+address);
			bid.setBidPrice(initPrice);
			mgr.addBid(itemId , bid ,userId);
			addActionMessage("��ӳɹ���ת���ṩ����ҳ");
			return SUCCESS;
		}
		else
		{
			addActionError("��֤�벻ƥ��,����������");
			return INPUT;
		}
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	// itemId��setter��getter����
	public void setItemId(int itemId)
	{
		this.itemId = itemId;
	}
	public int getItemId()
	{
		return this.itemId;
	}

	// bid��setter��getter����
	public void setBid(Bid bid)
	{
		this.bid = bid;
	}
	public Bid getBid()
	{
		return this.bid;
	}

	// initPrice��setter��getter����
	public double getInitPrice() {
		return initPrice;
	}

	public void setInitPrice(double initPrice) {
		this.initPrice = initPrice;
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