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
	// 封装请求参数的属性
	private int itemId;
	private Bid bid;
	private double initPrice;
	private String vercode;
	private String city;
	private String address;
	// 重写validate方法完成自定义输入校验
//	@Override
//	public void validate()
//	{
//		// 用户竞价必须大于物品的当前最高价
//		if(bid.getBidPrice() <= maxPrice)
//		{
//			addFieldError("bid.bidPrice", "您输入的竞价必须高于当前最高价！");
//		}
//	}
	// 处理用户竞价
	public String execute() throws Exception
	{
		Map session = ActionContext.getContext().getSession();
		// 取出Session中的userId和刚刚生成的随机验证码
		Integer userId = (Integer)session.get("userId");
		String ver2 = (String)session.get("rand");
		session.put("rand" , null);
		// 如果用户输入的验证码和Session中的随机验证码相同
//		if (vercode.equals(ver2))
			if (true)
		{
			System.out.println("+++++++++"+bid.getBeizhu());
			System.out.println("++++++++="+city);
			System.out.println("++++++++="+address);
			bid.setBidPrice(initPrice);
			mgr.addBid(itemId , bid ,userId);
			addActionMessage("添加成功！转到提供线索页");
			return SUCCESS;
		}
		else
		{
			addActionError("验证码不匹配,请重新输入");
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

	// itemId的setter和getter方法
	public void setItemId(int itemId)
	{
		this.itemId = itemId;
	}
	public int getItemId()
	{
		return this.itemId;
	}

	// bid的setter和getter方法
	public void setBid(Bid bid)
	{
		this.bid = bid;
	}
	public Bid getBid()
	{
		return this.bid;
	}

	// initPrice的setter和getter方法
	public double getInitPrice() {
		return initPrice;
	}

	public void setInitPrice(double initPrice) {
		this.initPrice = initPrice;
	}

	// vercode的setter和getter方法
	public void setVercode(String vercode)
	{
		this.vercode = vercode;
	}
	public String getVercode()
	{
		return this.vercode;
	}
}