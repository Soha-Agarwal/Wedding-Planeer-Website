package com.photography;

public class PhotoBean {
	long contact;
	String name;
	int pg_id;
	String image1,image2,image3,image4;
	int price;
	
	public int getPg_id()
	{
		return pg_id;
	}
	
	
public String getName()
{
	return name;
}
public String getImage1()
{
	return image1;
}
public String getImage2()
{
	return image2;
}
public String getImage3()
{
	return image3;
}
public String getImage4()
{
	return image4;
}

public long getContact()
{
	return contact;
}
public int getPrice()
{
	return price;
}
//Setting the values
public void setPg_id(int pg_id)
{
	this.pg_id=pg_id;
}
public void setPrice(int price)
{
	this.price=price;
}
public void setName(String name)
{
this.name=name;
}
public void setImage1(String image1)
{
this.image1=image1;
}
public void setImage2(String image2)
{
this.image2=image2;
}
public void setImage3(String image3)
{
this.image3=image3;
}
public void setImage4(String image4)
{
this.image4=image4;
}

public void setContact(long contact)
{
this.contact=contact;
}
}