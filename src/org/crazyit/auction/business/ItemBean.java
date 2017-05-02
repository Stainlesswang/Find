package org.crazyit.auction.business;

import java.io.Serializable;
import java.util.Date;

public class ItemBean
{
	private Integer id;
	private String name;
	private String desc;
	private String remark;
	private String kind;
	private String owner;
	private String winer;
	private String state;
	private double initPrice;
	private double maxPrice;
	private Date addTime;
	private Date endTime;
	// 照片
	private String img;
	//备注
	private String beizhu;

	// 无参数的构造器
	public ItemBean()
	{
	}
	// 初始化全部属性的构造器
	public ItemBean(Integer id , String name , String desc , String remark,
		String kind , String owner , String winer , String state ,
		double initPrice , double maxPrice , Date addTime , Date endTime,String img,String beizhu)
	{
		this.beizhu=beizhu;
		this.img=img;
		this.id = id;
		this.name = name;
		this.desc = desc;
		this.remark = remark;
		this.kind = kind;
		this.owner = owner;
		this.winer = winer;
		this.state = state;
		this.initPrice = initPrice;
		this.maxPrice = maxPrice;
		this.addTime = addTime;
		this.endTime = endTime;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getBeizhu() {
		return beizhu;
	}

	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
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

	// name属性的setter和getter方法
	public void setName(String name)
	{
		this.name = name;
	}
	public String getName()
	{
		return this.name;
	}

	// desc属性的setter和getter方法
	public void setDesc(String desc)
	{
		this.desc = desc;
	}
	public String getDesc()
	{
		return this.desc;
	}

	// remark属性的setter和getter方法
	public void setRemark(String remark)
	{
		this.remark = remark;
	}
	public String getRemark()
	{
		return this.remark;
	}

	// kind属性的setter和getter方法
	public void setKind(String kind)
	{
		this.kind = kind;
	}
	public String getKind()
	{
		return this.kind;
	}

	// owner属性的setter和getter方法
	public void setOwner(String owner)
	{
		this.owner = owner;
	}
	public String getOwner()
	{
		return this.owner;
	}

	// winer属性的setter和getter方法
	public void setWiner(String winer)
	{
		this.winer = winer;
	}
	public String getWiner()
	{
		return this.winer;
	}

	// state属性的setter和getter方法
	public void setState(String state)
	{
		this.state = state;
	}
	public String getState()
	{
		return this.state;
	}

	// initPrice属性的setter和getter方法
	public void setInitPrice(double initPrice)
	{
		this.initPrice = initPrice;
	}
	public double getInitPrice()
	{
		return this.initPrice;
	}

	// maxPrice属性的setter和getter方法
	public void setMaxPrice(double maxPrice)
	{
		this.maxPrice = maxPrice;
	}
	public double getMaxPrice()
	{
		return this.maxPrice;
	}

	// addTime属性的setter和getter方法
	public void setAddTime(Date addTime)
	{
		this.addTime = addTime;
	}
	public Date getAddTime()
	{
		return this.addTime;
	}

	// endTime属性的setter和getter方法
	public void setEndTime(Date endTime)
	{
		this.endTime = endTime;
	}
	public Date getEndTime()
	{
		return this.endTime;
	}

}