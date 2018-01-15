package com.venue;

public class VenueBean {
	long contact;
	String nameofvenue;
	int v_id;
	String image1;
	String address;
	int trad_id;
	int price;
	String bookdate;
	
	public int getV_id()
	{
		return v_id;
	}
	
	
public String getNameofvenue()
{
	return nameofvenue;
}
public String getAddress()
{
	return address;
}
public String getBookdate()
{
	return bookdate;
}
public int getTrad_id()
{
	return trad_id;
}
public String getImage1()
{
	return image1;
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
public void setV_id(int v_id)
{
	this.v_id=v_id;
}
public void setTrad_id(int trad_id)
{
	this.trad_id=trad_id;
}
public void setAddress(String address)
{
	this.address=address;
}
public void setPrice(int price)
{
	this.price=price;
}
public void setName(String nameofvenue)
{
this.nameofvenue=nameofvenue;
}
public void setImage1(String image1)
{
this.image1=image1;
}

public void setContact(long contact)
{
this.contact=contact;
}
public void setBookdate(String bookdate)
{
	this.bookdate=bookdate;
}
}
