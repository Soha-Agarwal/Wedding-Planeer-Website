package com.beautician;
public class BeauticianBean {
	String packagename;
	int total_price;
	int cost;
	String type1;
	String type2;
	String type3;
	String type4;
	String type5;
	String image;

	
	public String getPackagename()
	{
		return packagename;
	}
	public String getImage()
	{
		return image;
	}
	
	public int getTotal_price()
	{
		return total_price;
	}
	public String getType1()
	{
		return type1;
	}
	public String getType2()
	{
		return type2;
	}
	public String getType3()
	{
		return type3;
	}
	public String getType4()
	{
		return type4;
	}
	public String getType5()
	{
		return type5;
	}
	
	public int getCost()
	{
		return cost;
	}

public void setPackagename(String packagename)
{
	this.packagename=packagename;
}
public void setImage(String image)
{
	this.image=image;
}
public void setType1(String type1)
{
	this.type1=type1;
}
public void setType2(String type2)
{
	this.type2=type2;
}
public void setType3(String type3)
{
	this.type3=type3;
}
public void setType4(String type4)
{
	this.type4=type4;
}
public void setType5(String type5)
{
	this.type5=type5;
}

public void setTotal_price(int total_price)
{
	this.total_price=total_price;
}
public void setCost(int cost)
{
	this.cost=cost;
}

}