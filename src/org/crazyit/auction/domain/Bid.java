package org.crazyit.auction.domain;

import java.util.*;

import javax.persistence.*;
@Entity
@Table(name="bid")
public class Bid
{
	//��ʶ����
	@Id
	@Column(name="bid_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	// ���۵ļ۸�
	@Column(name="bid_price")
	private double bidPrice;
	// ���۵�����
	@Column(name="bid_date")
	private Date bidDate;
	// ���ξ��������ĵ���Ʒ
	@ManyToOne(targetEntity=Item.class)
	@JoinColumn(name="item_id", nullable=false)
	private Item bidItem;
	// ���뾺�۵��û�
	@ManyToOne(targetEntity=AuctionUser.class)
	@JoinColumn(name="user_id", nullable=false)
	private AuctionUser bidUser;
	// ��Ƭ
	@Column(name = "img")
	private String image;
	// ��ע
	@Column(name = "beizhu")
	private String beizhu;
	// ״̬ 0=Ĭ��״̬ 1=�а��� 2=��Ч��Ϣ
	@Column(name = "state")
	private String state;

	// �޲����Ĺ�����
	public Bid()
	{
	}
	// ��ʼ���������ԵĹ�����
	public Bid(double bidPrice)
	{
		this.bidPrice = bidPrice;
	}

	// id���Ե�setter��getter����
	public void setId(Integer id)
	{
		this.id = id;
	}
	public Integer getId()
	{
		return this.id;
	}

	// bidPrice��setter��getter����
	public void setBidPrice(double bidPrice)
	{
		this.bidPrice = bidPrice;
	}
	public double getBidPrice()
	{
		return this.bidPrice;
	}

	// bidDate��setter��getter����
	public void setBidDate(Date bidDate)
	{
		this.bidDate = bidDate;
	}
	public Date getBidDate()
	{
		return this.bidDate;
	}

	// bidItem��setter��getter����
	public void setBidItem(Item bidItem)
	{
		this.bidItem = bidItem;
	}
	public Item getBidItem()
	{
		return this.bidItem;
	}

	// bidUser��setter��getter����
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