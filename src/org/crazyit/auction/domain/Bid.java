package org.crazyit.auction.domain;

import java.util.*;

import javax.persistence.*;
@Entity
@Table(name="bid")
public class Bid
{
	//标识属性
	@Id
	@Column(name="bid_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	// 竞价的价格
	@Column(name="bid_price")
	private double bidPrice;
	// 竞价的日期
	@Column(name="bid_date")
	private Date bidDate;
	// 本次竞价所竞拍的物品
	@ManyToOne(targetEntity=Item.class)
	@JoinColumn(name="item_id", nullable=false)
	private Item bidItem;
	// 参与竞价的用户
	@ManyToOne(targetEntity=AuctionUser.class)
	@JoinColumn(name="user_id", nullable=false)
	private AuctionUser bidUser;
	// 照片
	@Column(name = "img")
	private String image;
	// 备注
	@Column(name = "beizhu")
	private String beizhu;
	// 状态 0=默认状态 1=有帮助 2=无效信息
	@Column(name = "state")
	private String state;

	// 无参数的构造器
	public Bid()
	{
	}
	// 初始化基本属性的构造器
	public Bid(double bidPrice)
	{
		this.bidPrice = bidPrice;
	}

	// id属性的setter和getter方法
	public void setId(Integer id)
	{
		this.id = id;
	}
	public Integer getId()
	{
		return this.id;
	}

	// bidPrice的setter和getter方法
	public void setBidPrice(double bidPrice)
	{
		this.bidPrice = bidPrice;
	}
	public double getBidPrice()
	{
		return this.bidPrice;
	}

	// bidDate的setter和getter方法
	public void setBidDate(Date bidDate)
	{
		this.bidDate = bidDate;
	}
	public Date getBidDate()
	{
		return this.bidDate;
	}

	// bidItem的setter和getter方法
	public void setBidItem(Item bidItem)
	{
		this.bidItem = bidItem;
	}
	public Item getBidItem()
	{
		return this.bidItem;
	}

	// bidUser的setter和getter方法
	public void setBidUser(AuctionUser bidUser)
	{
		this.bidUser = bidUser;
	}
	public AuctionUser getBidUser()
	{
		return this.bidUser;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getBeizhu() {
		return beizhu;
	}

	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}

	public int hashCode()
	{
		return bidUser.getUsername().hashCode()
			+ bidItem.hashCode() * 13 + (int)bidPrice * 19;
	}

	public boolean equals(Object obj)
	{
		if (this == obj)
		{
			return true;
		}
		if (obj != null && obj.getClass() == Bid.class)
		{
			Bid bid = (Bid)obj;
			if (bid.getBidUser().getUsername().equals(bidUser.getUsername())
				&& bid.getBidItem().equals(this.getBidItem())
				&& bid.getBidPrice() == this.getBidPrice())
			{
				return true;
			}
		}
		return false;
	}
}